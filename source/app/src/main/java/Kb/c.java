package Kb;

import com.jme3.audio.openal.AL;
import com.jme3.audio.openal.EFX;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class c {
    public static int a(String value) {
        if (value == null) {
            return 1;
        }
        char c10 = '\uffff';
        switch (value.hashCode()) {
            case -2102692545:
                if (value.equals("textWebEmailAddress")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1785214852:
                if (value.equals("textPostalAddress")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1417847553:
                if (value.equals("textUri")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1093840832:
                if (value.equals("textVisiblePassword")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1034364087:
                if (value.equals("number")) {
                    c10 = 4;
                    break;
                }
                break;
            case -998333479:
                if (value.equals("textImeMultiLine")) {
                    c10 = 5;
                    break;
                }
                break;
            case -932310496:
                if (value.equals("textMultiLine")) {
                    c10 = 6;
                    break;
                }
                break;
            case -344921532:
                if (value.equals("textCapWords")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3076014:
                if (value.equals("date")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 3560141:
                if (value.equals("time")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 106642798:
                if (value.equals("phone")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 154509572:
                if (value.equals("numberPassword")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case 609887373:
                if (value.equals("textPersonName")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 656386722:
                if (value.equals("textWebPassword")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
            case 948758248:
                if (value.equals("textPassword")) {
                    c10 = 14;
                    break;
                }
                break;
            case 956140984:
                if (value.equals("textShortMessage")) {
                    c10 = 15;
                    break;
                }
                break;
            case 1041433182:
                if (value.equals("textWebEditText")) {
                    c10 = 16;
                    break;
                }
                break;
            case 1045027781:
                if (value.equals("numberSigned")) {
                    c10 = 17;
                    break;
                }
                break;
            case 1049912239:
                if (value.equals("textCapCharacters")) {
                    c10 = 18;
                    break;
                }
                break;
            case 1469359877:
                if (value.equals("textFilter")) {
                    c10 = 19;
                    break;
                }
                break;
            case 1522016894:
                if (value.equals("textLongMessage")) {
                    c10 = 20;
                    break;
                }
                break;
            case 1727340165:
                if (value.equals("textEmailAddress")) {
                    c10 = 21;
                    break;
                }
                break;
            case 1732559950:
                if (value.equals("textAutoCorrect")) {
                    c10 = 22;
                    break;
                }
                break;
            case 1785084872:
                if (value.equals("numberDecimal")) {
                    c10 = 23;
                    break;
                }
                break;
            case 1793702779:
                if (value.equals("datetime")) {
                    c10 = 24;
                    break;
                }
                break;
            case 2146402443:
                if (value.equals("textCapSentences")) {
                    c10 = 25;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 209;
            case 1:
                return 113;
            case 2:
                return 17;
            case 3:
                return 145;
            case 4:
                return 2;
            case 5:
                return 262145;
            case 6:
                return EFX.ALC_EFX_MAJOR_VERSION;
            case 7:
                return AL.AL_FREQUENCY;
            case '\b':
                return 20;
            case '\t':
                return 36;
            case '\n':
                return 3;
            case 11:
                return 18;
            case '\f':
                return 97;
            case '\r':
                return 225;
            case 14:
                return 129;
            case 15:
                return 65;
            case 16:
                return 161;
            case 17:
                return 4098;
            case 18:
                return 4097;
            case 19:
                return 177;
            case 20:
                return 81;
            case 21:
                return 33;
            case 22:
                return 32769;
            case 23:
                return 8194;
            case 24:
                return 4;
            case 25:
                return 16385;
            default:
                return 1;
        }
    }
}
