package org.offlineApk.apksigner;

import java.util.Arrays;

public class OptionsParser {

    public final String[] f102851a;

    public int f102852b;

    public int f102853c;

    public String f102854d;

    public String f102855e;

    public String f102856f;

    public String f102857g;

    public static class OptionsException extends Exception {
        private static final long serialVersionUID = 1;

        public OptionsException(String message) {
            super(message);
        }
    }

    public OptionsParser(String[] params) {
        this.f102851a = (String[]) params.clone();
    }

    public String a() {
        return this.f102856f;
    }

    public boolean b(boolean defaultValue) throws OptionsException {
        String str = this.f102854d;
        if (str != null) {
            this.f102854d = null;
            if ("true".equals(str)) {
                return true;
            }
            if ("false".equals(str)) {
                return false;
            }
            throw new OptionsException("Unsupported value for " + this.f102856f + ": " + str + ". Only true or false supported.");
        }
        int i10 = this.f102852b;
        String[] strArr = this.f102851a;
        if (i10 >= strArr.length) {
            return defaultValue;
        }
        String str2 = strArr[i10];
        if ("true".equals(str2)) {
            this.f102852b++;
            return true;
        }
        if (!"false".equals(str2)) {
            return defaultValue;
        }
        this.f102852b++;
        return false;
    }

    public String[] c() {
        int i10 = this.f102852b;
        String[] strArr = this.f102851a;
        if (i10 >= strArr.length) {
            return new String[0];
        }
        if ("--".equals(strArr[i10])) {
            String[] strArr2 = this.f102851a;
            return (String[]) Arrays.copyOfRange(strArr2, this.f102852b + 1, strArr2.length);
        }
        String[] strArr3 = this.f102851a;
        return (String[]) Arrays.copyOfRange(strArr3, this.f102852b, strArr3.length);
    }

    public int d(String valueDescription) throws OptionsException {
        String e10 = e(valueDescription);
        try {
            return Integer.parseInt(e10);
        } catch (NumberFormatException unused) {
            throw new OptionsException(valueDescription + " (" + this.f102856f + ") must be a decimal number: " + e10);
        }
    }

    public String e(String valueDescription) throws OptionsException {
        String str = this.f102854d;
        if (str != null) {
            this.f102854d = null;
            return str;
        }
        int i10 = this.f102852b;
        String[] strArr = this.f102851a;
        if (i10 >= strArr.length) {
            throw new OptionsException(valueDescription + " missing after " + this.f102856f);
        }
        String str2 = strArr[i10];
        if (!"--".equals(str2)) {
            this.f102852b++;
            return str2;
        }
        throw new OptionsException(valueDescription + " missing after " + this.f102856f);
    }

    public String f() {
        int i10 = this.f102852b;
        String[] strArr = this.f102851a;
        if (i10 >= strArr.length) {
            return null;
        }
        String str = strArr[i10];
        if (!str.startsWith("-")) {
            return null;
        }
        int i11 = this.f102852b;
        this.f102853c = i11;
        this.f102852b = i11 + 1;
        this.f102857g = this.f102856f;
        this.f102856f = str;
        this.f102855e = this.f102854d;
        this.f102854d = null;
        if (!str.startsWith("--")) {
            return str.substring(1);
        }
        if ("--".equals(str)) {
            return null;
        }
        int indexOf = str.indexOf(61);
        if (indexOf == -1) {
            return str.substring(2);
        }
        this.f102854d = str.substring(indexOf + 1);
        this.f102856f = str.substring(0, indexOf);
        return str.substring(2, indexOf);
    }

    public void g() {
        this.f102852b = this.f102853c;
        this.f102856f = this.f102857g;
        this.f102854d = this.f102855e;
    }
}
