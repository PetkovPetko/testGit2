
Procedure Posting(Cancel, Mode)
	//{{__REGISTER_REGISTERRECORDS_WIZARD
	// Даденият фрагмент е построен от конструктор.
	// При повторно използване на конструктора, внесените ръчно изменения ще бъдат загубени!!!

	// регистър Композиция Receipt
	RegisterRecords.Композиция.Write = True;
	For Each CurRowОсновна In Основна Do
		Record = RegisterRecords.Композиция.Add();
		Record.RecordType = AccumulationRecordType.Receipt;
		Record.Period = Date;
		Record.Клас = CurRowОсновна.клас;
		Record.Роля = CurRowОсновна.роля;
		Record.Специализация = CurRowОсновна.Специализация;
		Record.ДКП = ДКПзаДен;
	EndDo;

	//}}__REGISTER_REGISTERRECORDS_WIZARD
EndProcedure
