﻿
Процедура ОбработкаПроведения(Отказ, Режим)

	// регистр СпецПредложения Приход
	Движения.СпецПредложения.Записывать = Истина;
	Движение = Движения.СпецПредложения.Добавить();
	Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
	Движение.Период = Дата;
	Движение.Номенклатура = Товар;
	Движение.Сумма = Сумма;

КонецПроцедуры

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	// Вставить содержимое обработчика.
КонецПроцедуры
