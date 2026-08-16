package org.openjdk.javax.lang.model;

import H2.c;
import android.provider.CallLog;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.constant.ConstantDescs;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public enum SourceVersion {
    RELEASE_0,
    RELEASE_1,
    RELEASE_2,
    RELEASE_3,
    RELEASE_4,
    RELEASE_5,
    RELEASE_6,
    RELEASE_7,
    RELEASE_8,
    RELEASE_9;

    private static final SourceVersion latestSupported = getLatestSupported();

    /* JADX WARN: Removed duplicated region for block: B:8:0x004b A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static SourceVersion getLatestSupported() {
        String property;
        int hashCode;
        char c10;
        try {
            property = System.getProperty("java.specification.version");
            hashCode = property.hashCode();
        } catch (SecurityException unused) {
        }
        if (hashCode == 57) {
            if (property.equals("9")) {
                c10 = 0;
                if (c10 != 0) {
                }
            }
            c10 = '\uffff';
            if (c10 != 0) {
            }
        }
        switch (hashCode) {
            case 48569:
                if (property.equals("1.6")) {
                    c10 = 4;
                    break;
                }
                c10 = '\uffff';
                break;
            case 48570:
                if (property.equals("1.7")) {
                    c10 = 3;
                    break;
                }
                c10 = '\uffff';
                break;
            case 48571:
                if (property.equals("1.8")) {
                    c10 = 2;
                    break;
                }
                c10 = '\uffff';
                break;
            case 48572:
                if (property.equals("1.9")) {
                    c10 = 1;
                    break;
                }
                c10 = '\uffff';
                break;
            default:
                c10 = '\uffff';
                break;
        }
        return (c10 != 0 || c10 == 1) ? RELEASE_9 : c10 != 2 ? c10 != 3 ? c10 != 4 ? RELEASE_5 : RELEASE_6 : RELEASE_7 : RELEASE_8;
    }

    public static boolean isIdentifier(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        if (charSequence2.length() == 0) {
            return false;
        }
        int codePointAt = charSequence2.codePointAt(0);
        if (!Character.isJavaIdentifierStart(codePointAt)) {
            return false;
        }
        int charCount = Character.charCount(codePointAt);
        while (charCount < charSequence2.length()) {
            int codePointAt2 = charSequence2.codePointAt(charCount);
            if (!Character.isJavaIdentifierPart(codePointAt2)) {
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public static boolean isKeyword(CharSequence charSequence) {
        return isKeyword(charSequence, latest());
    }

    public static boolean isName(CharSequence charSequence) {
        return isName(charSequence, latest());
    }

    public static SourceVersion latest() {
        return RELEASE_9;
    }

    public static SourceVersion latestSupported() {
        return latestSupported;
    }

    public static boolean isKeyword(CharSequence charSequence, SourceVersion sourceVersion) {
        String charSequence2 = charSequence.toString();
        charSequence2.hashCode();
        char c10 = '\uffff';
        switch (charSequence2.hashCode()) {
            case -1888027236:
                if (charSequence2.equals("volatile")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1466596076:
                if (charSequence2.equals("synchronized")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1408208058:
                if (charSequence2.equals("assert")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1325958191:
                if (charSequence2.equals("double")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1305664359:
                if (charSequence2.equals("extends")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1184795739:
                if (charSequence2.equals("import")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1052618729:
                if (charSequence2.equals("native")) {
                    c10 = 6;
                    break;
                }
                break;
            case -977423767:
                if (charSequence2.equals("public")) {
                    c10 = 7;
                    break;
                }
                break;
            case -934396624:
                if (charSequence2.equals("return")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -915384400:
                if (charSequence2.equals("implements")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -892481938:
                if (charSequence2.equals("static")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -889473228:
                if (charSequence2.equals("switch")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case -874432947:
                if (charSequence2.equals("throws")) {
                    c10 = '\f';
                    break;
                }
                break;
            case -853259901:
                if (charSequence2.equals("finally")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
            case -807062458:
                if (charSequence2.equals(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME)) {
                    c10 = 14;
                    break;
                }
                break;
            case -608539730:
                if (charSequence2.equals("protected")) {
                    c10 = 15;
                    break;
                }
                break;
            case -567202649:
                if (charSequence2.equals("continue")) {
                    c10 = 16;
                    break;
                }
                break;
            case -314497661:
                if (charSequence2.equals("private")) {
                    c10 = 17;
                    break;
                }
                break;
            case 95:
                if (charSequence2.equals(ConstantDescs.DEFAULT_NAME)) {
                    c10 = 18;
                    break;
                }
                break;
            case 3211:
                if (charSequence2.equals("do")) {
                    c10 = 19;
                    break;
                }
                break;
            case 3357:
                if (charSequence2.equals("if")) {
                    c10 = 20;
                    break;
                }
                break;
            case 101577:
                if (charSequence2.equals("for")) {
                    c10 = 21;
                    break;
                }
                break;
            case 104431:
                if (charSequence2.equals("int")) {
                    c10 = 22;
                    break;
                }
                break;
            case 108960:
                if (charSequence2.equals(CallLog.Calls.NEW)) {
                    c10 = 23;
                    break;
                }
                break;
            case 115131:
                if (charSequence2.equals("try")) {
                    c10 = 24;
                    break;
                }
                break;
            case 3039496:
                if (charSequence2.equals("byte")) {
                    c10 = 25;
                    break;
                }
                break;
            case 3046192:
                if (charSequence2.equals("case")) {
                    c10 = 26;
                    break;
                }
                break;
            case 3052374:
                if (charSequence2.equals("char")) {
                    c10 = 27;
                    break;
                }
                break;
            case 3116345:
                if (charSequence2.equals("else")) {
                    c10 = 28;
                    break;
                }
                break;
            case 3118337:
                if (charSequence2.equals("enum")) {
                    c10 = 29;
                    break;
                }
                break;
            case 3178851:
                if (charSequence2.equals("goto")) {
                    c10 = 30;
                    break;
                }
                break;
            case 3327612:
                if (charSequence2.equals("long")) {
                    c10 = c.f7959b;
                    break;
                }
                break;
            case 3392903:
                if (charSequence2.equals("null")) {
                    c10 = C15883c.f126249O;
                    break;
                }
                break;
            case 3559070:
                if (charSequence2.equals("this")) {
                    c10 = '!';
                    break;
                }
                break;
            case 3569038:
                if (charSequence2.equals("true")) {
                    c10 = '\"';
                    break;
                }
                break;
            case 3625364:
                if (charSequence2.equals("void")) {
                    c10 = JavaElement.JEM_IMPORTDECLARATION;
                    break;
                }
                break;
            case 64711720:
                if (charSequence2.equals(TypedValues.Custom.S_BOOLEAN)) {
                    c10 = '$';
                    break;
                }
                break;
            case 94001407:
                if (charSequence2.equals("break")) {
                    c10 = JavaElement.JEM_PACKAGEDECLARATION;
                    break;
                }
                break;
            case 94432955:
                if (charSequence2.equals("catch")) {
                    c10 = '&';
                    break;
                }
                break;
            case 94742904:
                if (charSequence2.equals("class")) {
                    c10 = JavaElement.JEM_MODULAR_CLASSFILE;
                    break;
                }
                break;
            case 94844771:
                if (charSequence2.equals("const")) {
                    c10 = '(';
                    break;
                }
                break;
            case 97196323:
                if (charSequence2.equals("false")) {
                    c10 = ')';
                    break;
                }
                break;
            case 97436022:
                if (charSequence2.equals("final")) {
                    c10 = '*';
                    break;
                }
                break;
            case 97526364:
                if (charSequence2.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = '+';
                    break;
                }
                break;
            case 109413500:
                if (charSequence2.equals("short")) {
                    c10 = IIndexConstants.PARAMETER_SEPARATOR;
                    break;
                }
                break;
            case 109801339:
                if (charSequence2.equals("super")) {
                    c10 = '-';
                    break;
                }
                break;
            case 110339814:
                if (charSequence2.equals("throw")) {
                    c10 = '.';
                    break;
                }
                break;
            case 113101617:
                if (charSequence2.equals("while")) {
                    c10 = '/';
                    break;
                }
                break;
            case 502623545:
                if (charSequence2.equals("interface")) {
                    c10 = '0';
                    break;
                }
                break;
            case 902025516:
                if (charSequence2.equals("instanceof")) {
                    c10 = '1';
                    break;
                }
                break;
            case 1052746378:
                if (charSequence2.equals("transient")) {
                    c10 = '2';
                    break;
                }
                break;
            case 1544803905:
                if (charSequence2.equals("default")) {
                    c10 = '3';
                    break;
                }
                break;
            case 1732898850:
                if (charSequence2.equals("abstract")) {
                    c10 = '4';
                    break;
                }
                break;
            case 1794694483:
                if (charSequence2.equals("strictfp")) {
                    c10 = '5';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 30:
            case 31:
            case ' ':
            case '!':
            case '\"':
            case '#':
            case '$':
            case '%':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '*':
            case '+':
            case ',':
            case '-':
            case '.':
            case '/':
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
                return true;
            case 2:
                return sourceVersion.compareTo(RELEASE_4) >= 0;
            case 18:
                return sourceVersion.compareTo(RELEASE_9) >= 0;
            case 29:
                return sourceVersion.compareTo(RELEASE_5) >= 0;
            case '5':
                return sourceVersion.compareTo(RELEASE_2) >= 0;
            default:
                return false;
        }
    }

    public static boolean isName(CharSequence charSequence, SourceVersion sourceVersion) {
        for (String str : charSequence.toString().split("\\.", -1)) {
            if (!isIdentifier(str) || isKeyword(str, sourceVersion)) {
                return false;
            }
        }
        return true;
    }
}
