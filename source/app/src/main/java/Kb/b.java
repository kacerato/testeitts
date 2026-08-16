package Kb;

import ga.m;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class b {
    /* JADX WARN: Removed duplicated region for block: B:52:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0101 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(String value) {
        int i10;
        if (value == null) {
            return 0;
        }
        int i11 = 0;
        for (String str : value.toLowerCase().split("\\|")) {
            String trim = str.trim();
            trim.hashCode();
            char c10 = '\uffff';
            switch (trim.hashCode()) {
                case -1633016142:
                    if (trim.equals("fill_vertical")) {
                        c10 = 0;
                    }
                    switch (c10) {
                        case 0:
                            i11 |= 112;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 1:
                            i11 |= 80;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 2:
                            i11 |= 17;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 3:
                            i11 |= 8;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 4:
                            i11 |= 7;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 5:
                            i11 |= 16;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 6:
                            i11 |= 128;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 7:
                            i10 = 8388613;
                            break;
                        case '\b':
                            i11 |= 48;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case '\t':
                            i11 |= 119;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case '\n':
                            i11 |= 3;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case 11:
                            i11 |= 5;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                        case '\f':
                            i10 = 8388611;
                            break;
                        case '\r':
                            i11 |= 1;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                            continue;
                    }
                    i11 |= i10;
                    break;
                case -1383228885:
                    if (trim.equals("bottom")) {
                        c10 = 1;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case -1364013995:
                    if (trim.equals("center")) {
                        c10 = 2;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case -831189901:
                    if (trim.equals("clip_horizontal")) {
                        c10 = 3;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case -483365792:
                    if (trim.equals("fill_horizontal")) {
                        c10 = 4;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case -348726240:
                    if (trim.equals("center_vertical")) {
                        c10 = 5;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case -55726203:
                    if (trim.equals("clip_vertical")) {
                        c10 = 6;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 100571:
                    if (trim.equals("end")) {
                        c10 = 7;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 115029:
                    if (trim.equals("top")) {
                        c10 = '\b';
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 3143043:
                    if (trim.equals("fill")) {
                        c10 = '\t';
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 3317767:
                    if (trim.equals(m.f88234c)) {
                        c10 = '\n';
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 108511772:
                    if (trim.equals("right")) {
                        c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 109757538:
                    if (trim.equals("start")) {
                        c10 = '\f';
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                case 1063616078:
                    if (trim.equals("center_horizontal")) {
                        c10 = CharUtils.CR;
                    }
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
                default:
                    switch (c10) {
                    }
                    i11 |= i10;
                    break;
            }
        }
        if (i11 == 0) {
            return 0;
        }
        return i11;
    }
}
