package com.itsmagic.engine.Activities.Editor.Utils;

import java.util.Locale;

public class m {

    public enum a {
        PT_BR,
        EN
    }

    public static a a() {
        return Locale.getDefault().getLanguage().equals("pt") ? a.PT_BR : a.EN;
    }
}
