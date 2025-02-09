﻿#Область ОбработчикиСобытий

Функция PollingGet(Запрос)
	
	УстановитьПривилегированныйРежим(Истина);
	
	//UserAgent = Запрос.Заголовки.Получить("User-Agent"); 
	//Accept = Запрос.Заголовки.Получить("Accept");
	
 	//Если UserAgent = Неопределено ИЛИ Accept = Неопределено Тогда
	//	Возврат Новый HTTPСервисОтвет(400);
	//ИначеЕсли НЕ UserAgent = "Go-http-client/1.1" Тогда
	//	Возврат пэмМетрикиСервер.ВернутьОписаниеСервиса();
	//КонецЕсли;
	
	//Если (СтрНайти(Accept,"text/plain") = 0) Тогда
	//	Возврат Новый HTTPСервисОтвет(405);	
	//КонецЕсли;
	
	МетрикиСтрокой = пэмМетрикиСервер.СформироватьМетрикиПоЗапросу();

	Если НЕ ЗначениеЗаполнено(МетрикиСтрокой) Тогда
		Возврат Новый HTTPСервисОтвет(204);	
	КонецЕсли; 
	
	Ответ = Новый HTTPСервисОтвет(200);
	Ответ.УстановитьТелоИзСтроки(МетрикиСтрокой, КодировкаТекста.UTF8, ИспользованиеByteOrderMark.НеИспользовать);
	
	Возврат Ответ;

КонецФункции

#КонецОбласти