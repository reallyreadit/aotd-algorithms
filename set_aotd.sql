CREATE FUNCTION
	community_reads.set_aotd()
RETURNS SETOF
	article_api.article
LANGUAGE
	sql
AS $$
	WITH aotd AS (
		UPDATE
			core.article
		SET
			aotd_timestamp = core.utc_now()
		WHERE
			id = (
				SELECT
					id
				FROM
					community_reads.community_read
				WHERE
					aotd_timestamp IS NULL
				ORDER BY
					hot_score DESC
				LIMIT
					1
			)
		RETURNING
			id
	)
	SELECT
		*
	FROM
		article_api.get_article(
			article_id => (
				SELECT
					id
				FROM
					aotd
			),
			user_account_id => NULL
		);
$$;