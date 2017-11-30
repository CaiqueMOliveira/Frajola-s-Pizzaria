/*
	RETORNA A MEDIA DE CLICKS REFERENTE A TODOS OS PRODUTO
*/
DELIMITER >>

CREATE PROCEDURE sp_obter_media_click_produtos(OUT mediaClicks FLOAT)
	BEGIN
    
		DECLARE maxClick INT;
    
		/* ARMAZENA O VALOR MAXIMO DE CLICKS */
        SET maxClick = (SELECT MAX(click) FROM view_analise_marketing_clicks);
        
        /* DEFINE A QUANTIA DA MEDIA DE CLICKS  */
        SET mediaClicks = (maxClick / (SELECT COUNT(idProduto) FROM view_analise_marketing_clicks));
        
    END >>

DELIMITER ;

/* REALIZA O TESTE DA STORED PROCEDURE */
CALL sp_obter_media_click_produtos(@mediaClicks);
SELECT @mediaClicks;