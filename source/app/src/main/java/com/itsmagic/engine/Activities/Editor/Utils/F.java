package com.itsmagic.engine.Activities.Editor.Utils;

import android.view.View;
import com.google.android.material.textfield.TextInputEditText;
import com.itsmagic.engine2.R;

public class F {

    public static String f72005a = "184";

    public enum a {
        FloatNumber,
        IntNumber,
        MultiLineText,
        SingleLineText,
        Password,
        Default
    }

    public static String a(String formats) {
        return formats.contains("@ANY@") ? "any" : (formats.length() <= 2 || !formats.contains(".")) ? "" : formats.substring(1, formats.length() - 1).replace(".", " ").substring(1);
    }

    public static String b(View view) {
        return ((TextInputEditText) view.findViewById(R.id.textInputEditText)).getText().toString();
    }

    public static TextInputEditText c(View view) {
        return (TextInputEditText) view.findViewById(R.id.textInputEditText);
    }

    public static void d(String text, View view) {
        TextInputEditText textInputEditText;
        if (view == null || (textInputEditText = (TextInputEditText) view.findViewById(R.id.textInputEditText)) == null) {
            return;
        }
        textInputEditText.setText(text);
    }

    public static void e(a type, View view) {
        TextInputEditText textInputEditText = (TextInputEditText) view.findViewById(R.id.textInputEditText);
        if (textInputEditText != null) {
            if (type == a.FloatNumber) {
                textInputEditText.setInputType(12290);
                return;
            }
            if (type == a.IntNumber) {
                textInputEditText.setInputType(4098);
                return;
            }
            if (type == a.MultiLineText) {
                textInputEditText.setInputType(262144);
                return;
            }
            if (type == a.Default) {
                textInputEditText.setInputType(1);
            } else if (type == a.SingleLineText) {
                textInputEditText.setInputType(1);
            } else if (type == a.Password) {
                textInputEditText.setInputType(129);
            }
        }
    }

    public static void f(a type, TextInputEditText tiet) {
        if (type == a.FloatNumber) {
            tiet.setInputType(12290);
            return;
        }
        if (type == a.IntNumber) {
            tiet.setInputType(4098);
            return;
        }
        if (type == a.MultiLineText) {
            tiet.setInputType(262144);
            return;
        }
        if (type == a.Default) {
            tiet.setInputType(1);
        } else if (type == a.SingleLineText) {
            tiet.setInputType(1);
        } else if (type == a.Password) {
            tiet.setInputType(129);
        }
    }
}
