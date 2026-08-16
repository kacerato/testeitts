package H6;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.LinkedList;
import java.util.List;

public class f {

    public String f8253a = "";

    public String f8254b = "";

    public List<e> f8255c = new LinkedList();

    public boolean f8256d = true;

    public final List<String> a(int x10, int lineStart, int operatorsFound, List<String> entries) {
        e eVar = new e();
        eVar.f8249a = lineStart - 1;
        String g10 = g(eVar);
        int i10 = x10 + 1;
        int i11 = x10 + 2;
        h(eVar, g10, entries.get(i10), entries.get(i11), "");
        entries.set(i10, k(g10, "ID"));
        entries.set(i11, "");
        this.f8255c.clear();
        this.f8255c.add(eVar);
        i("FOUND THE " + (operatorsFound + 1) + " OPERATOR BUT THE NEXT IS A SUB, SO CREATING A INVERSE OF THE VALUE");
        i(eVar.toString());
        i("BREAKING LOOP, WAITING TO REPEAT");
        this.f8256d = true;
        return entries;
    }

    public final List<String> b(int x10, int lineStart, int operatorsFound, List<String> entries) {
        e eVar = new e();
        eVar.f8249a = lineStart - 1;
        String g10 = g(eVar);
        int i10 = x10 - 1;
        int i11 = x10 + 1;
        h(eVar, g10, entries.get(i10), entries.get(x10), entries.get(i11));
        entries.set(i10, k(g10, "ID"));
        entries.set(x10, "");
        entries.set(i11, "");
        this.f8255c.clear();
        this.f8255c.add(eVar);
        i("FOUND THE " + (operatorsFound + 1) + " OPERATOR, CREATING A REDUCER ");
        i(eVar.toString());
        i("BREAKING LOOP, WAITING TO REPEAT");
        this.f8256d = true;
        return entries;
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x04df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0586 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x05e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0672 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0688 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x069a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x06c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01aa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ed A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0235 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x024a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x025c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0287 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02a3 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<String> c(List<String> entries) {
        boolean z10;
        Object obj;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        List<String> list;
        String str10;
        int i10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        Object obj2;
        Object obj3;
        int i11;
        int i12;
        String str16;
        String str17;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i13;
        String str18;
        List<String> list2 = entries;
        LinkedList<Integer> linkedList = new LinkedList();
        for (int i14 = 0; i14 < entries.size(); i14++) {
            if (list2.get(i14).length() == 0) {
                linkedList.add(Integer.valueOf(i14));
            }
        }
        int i15 = 0;
        for (Integer num : linkedList) {
            i("REMOVING EMPTY AT " + ((Object) num));
            list2.remove(num.intValue() - i15);
            i15++;
        }
        linkedList.clear();
        int i16 = 0;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
        int i17 = 0;
        boolean z20 = false;
        boolean z21 = false;
        boolean z22 = false;
        while (true) {
            boolean z23 = z19;
            boolean z24 = z20;
            boolean z25 = z22;
            z10 = z21;
            obj = "SUB";
            int i18 = i17;
            str = "if";
            str2 = "EQUAL DETECTED OUTSIDE A FUNCTION, IGNORING";
            str3 = "use";
            str4 = "FUNCTION FOUND WAITING TO ENTER";
            boolean z26 = z18;
            str5 = "";
            boolean z27 = z17;
            str6 = "@";
            if (i16 >= entries.size()) {
                break;
            }
            if (!z15) {
                String str19 = list2.get(i16);
                if (str19.length() > 0) {
                    this.f8253a = "";
                    if (str19.contains("@")) {
                        z14 = z15;
                        i13 = 1;
                        this.f8253a = str19.substring(1, str19.indexOf("@"));
                    } else {
                        z14 = z15;
                        i13 = 1;
                        this.f8253a = str19.substring(1, str19.length() - 1);
                    }
                    this.f8254b = "";
                    if (str19.contains("@")) {
                        String substring = str19.substring(str19.indexOf("@"));
                        this.f8254b = substring;
                        String substring2 = substring.substring(i13, substring.length() - i13);
                        this.f8254b = substring2;
                        this.f8254b = substring2.substring(i13, substring2.length() - i13);
                    }
                    if (this.f8253a.equals("KEYWORD") && !this.f8254b.equals("cls")) {
                        if (this.f8254b.equals("fun")) {
                            i("FUNCTION FOUND WAITING TO ENTER");
                            z19 = z23;
                            z22 = true;
                        } else if (!this.f8254b.equals("use") && (this.f8254b.equals("if") || this.f8254b.equals("else"))) {
                            z22 = z25;
                            z19 = true;
                        }
                        if (this.f8253a.equals("ID") || z19 || !z16 || z27 || z26) {
                            z18 = z26;
                        } else {
                            i("FOUND A ID INSIDE A FUNC, BUT NO EQUALS WAS FOUND BEFORE, ENTERING A LINE AT " + i16);
                            z18 = true;
                        }
                        if (this.f8253a.equals("EQUAL")) {
                            if (!z16) {
                                i(str2);
                            } else if (z18) {
                                i("EQUAL DETECTED, ENTERING EXPRESSION AT " + i16);
                                z17 = true;
                                if (this.f8253a.equals("ADD") || !z17) {
                                    str18 = "FOUND THE FIRST OPERATOR, ADD INSIDE A EXPRESSION";
                                    i17 = i18;
                                } else {
                                    str18 = "FOUND THE FIRST OPERATOR, ADD INSIDE A EXPRESSION";
                                    i(str18);
                                    i17 = i18 + 1;
                                }
                                if (this.f8253a.equals(obj) && z17) {
                                    i(str18);
                                    i17++;
                                }
                                if (this.f8253a.equals("MUL") && z17) {
                                    if (i17 != 0) {
                                        i(str18);
                                        i17++;
                                    } else {
                                        z15 = true;
                                        z21 = true;
                                        if (this.f8253a.equals("DIV") && z17) {
                                            if (i17 != 0) {
                                                i(str18);
                                                i17++;
                                            } else {
                                                z15 = true;
                                                z21 = true;
                                            }
                                        }
                                        if (this.f8253a.equals("LPAREN")) {
                                            if (!z16) {
                                                i("LPAREN DETECTED OUTSIDE A FUNCTION, IGNORING");
                                            } else if (z18) {
                                                i("LPAREN DETECTED, ENTERING EXPRESSION AT " + i16);
                                                z17 = true;
                                                z20 = true;
                                                if (this.f8253a.equals("RPAREN") && z17 && z20) {
                                                    i("LEAVING EXPRESSION BY RPAREN");
                                                    i17 = 0;
                                                    z20 = false;
                                                }
                                                if (this.f8253a.equals("COMMA") && z17) {
                                                    i("RESETING EXPRESSION BY COMMA");
                                                    i17 = 0;
                                                }
                                                if (this.f8253a.equals("SEMICOLON") && z17) {
                                                    i("LEAVING EXPRESSION BY SEMICOLON");
                                                    z17 = false;
                                                    z18 = false;
                                                    i17 = 0;
                                                }
                                                if (this.f8253a.equals("LBRACE")) {
                                                    if (z22) {
                                                        i("ENTERING FUNCTION");
                                                        z16 = true;
                                                    }
                                                    if (z16 && z19) {
                                                        z19 = false;
                                                    }
                                                }
                                                if (!this.f8253a.equals("RBRACE") && z16) {
                                                    i("LEAVING FUNCTION");
                                                    z16 = false;
                                                    z22 = false;
                                                }
                                                i16++;
                                                list2 = entries;
                                            } else {
                                                i("LPAREN DETECTED OUTSIDE A LINE, IGNORING");
                                            }
                                        }
                                        z20 = z24;
                                        if (this.f8253a.equals("RPAREN")) {
                                            i("LEAVING EXPRESSION BY RPAREN");
                                            i17 = 0;
                                            z20 = false;
                                        }
                                        if (this.f8253a.equals("COMMA")) {
                                            i("RESETING EXPRESSION BY COMMA");
                                            i17 = 0;
                                        }
                                        if (this.f8253a.equals("SEMICOLON")) {
                                            i("LEAVING EXPRESSION BY SEMICOLON");
                                            z17 = false;
                                            z18 = false;
                                            i17 = 0;
                                        }
                                        if (this.f8253a.equals("LBRACE")) {
                                        }
                                        if (!this.f8253a.equals("RBRACE")) {
                                            i("LEAVING FUNCTION");
                                            z16 = false;
                                            z22 = false;
                                        }
                                        i16++;
                                        list2 = entries;
                                    }
                                }
                                z21 = z10;
                                z15 = z14;
                                if (this.f8253a.equals("DIV")) {
                                    if (i17 != 0) {
                                    }
                                }
                                if (this.f8253a.equals("LPAREN")) {
                                }
                                z20 = z24;
                                if (this.f8253a.equals("RPAREN")) {
                                }
                                if (this.f8253a.equals("COMMA")) {
                                }
                                if (this.f8253a.equals("SEMICOLON")) {
                                }
                                if (this.f8253a.equals("LBRACE")) {
                                }
                                if (!this.f8253a.equals("RBRACE")) {
                                }
                                i16++;
                                list2 = entries;
                            } else {
                                i("EQUAL DETECTED OUTSIDE A LINE, IGNORING");
                            }
                        }
                        z17 = z27;
                        if (this.f8253a.equals("ADD")) {
                        }
                        str18 = "FOUND THE FIRST OPERATOR, ADD INSIDE A EXPRESSION";
                        i17 = i18;
                        if (this.f8253a.equals(obj)) {
                            i(str18);
                            i17++;
                        }
                        if (this.f8253a.equals("MUL")) {
                            if (i17 != 0) {
                            }
                        }
                        z21 = z10;
                        z15 = z14;
                        if (this.f8253a.equals("DIV")) {
                        }
                        if (this.f8253a.equals("LPAREN")) {
                        }
                        z20 = z24;
                        if (this.f8253a.equals("RPAREN")) {
                        }
                        if (this.f8253a.equals("COMMA")) {
                        }
                        if (this.f8253a.equals("SEMICOLON")) {
                        }
                        if (this.f8253a.equals("LBRACE")) {
                        }
                        if (!this.f8253a.equals("RBRACE")) {
                        }
                        i16++;
                        list2 = entries;
                    }
                    z19 = z23;
                    z22 = z25;
                    if (this.f8253a.equals("ID")) {
                    }
                    z18 = z26;
                    if (this.f8253a.equals("EQUAL")) {
                    }
                    z17 = z27;
                    if (this.f8253a.equals("ADD")) {
                    }
                    str18 = "FOUND THE FIRST OPERATOR, ADD INSIDE A EXPRESSION";
                    i17 = i18;
                    if (this.f8253a.equals(obj)) {
                    }
                    if (this.f8253a.equals("MUL")) {
                    }
                    z21 = z10;
                    z15 = z14;
                    if (this.f8253a.equals("DIV")) {
                    }
                    if (this.f8253a.equals("LPAREN")) {
                    }
                    z20 = z24;
                    if (this.f8253a.equals("RPAREN")) {
                    }
                    if (this.f8253a.equals("COMMA")) {
                    }
                    if (this.f8253a.equals("SEMICOLON")) {
                    }
                    if (this.f8253a.equals("LBRACE")) {
                    }
                    if (!this.f8253a.equals("RBRACE")) {
                    }
                    i16++;
                    list2 = entries;
                }
            }
            z19 = z23;
            z20 = z24;
            z22 = z25;
            z21 = z10;
            i17 = i18;
            z18 = z26;
            z17 = z27;
            z15 = z15;
            i16++;
            list2 = entries;
        }
        String str20 = "EQUAL DETECTED, ENTERING EXPRESSION AT ";
        Object obj4 = "EQUAL";
        String str21 = "FOUND A ID INSIDE A FUNC, BUT NO EQUALS WAS FOUND BEFORE, ENTERING A LINE AT ";
        String str22 = "FOUND THE FIRST OPERATOR, ADD INSIDE A EXPRESSION";
        int i19 = 0;
        this.f8256d = false;
        List<String> list3 = entries;
        String str23 = "EQUAL DETECTED OUTSIDE A LINE, IGNORING";
        boolean z28 = false;
        boolean z29 = false;
        boolean z30 = false;
        int i20 = 0;
        int i21 = 0;
        boolean z31 = false;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        while (i19 < list3.size()) {
            if (z28) {
                str7 = str;
                str8 = str3;
                str9 = str5;
                list = list3;
                str10 = str23;
                i10 = i24;
                str11 = str21;
                str12 = str20;
                str13 = str6;
            } else {
                List<String> list4 = list3;
                String str24 = list4.get(i19);
                if (str24.length() > 0) {
                    this.f8253a = str5;
                    if (str24.contains(str6)) {
                        str12 = str20;
                        obj3 = obj4;
                        i11 = 1;
                        this.f8253a = str24.substring(1, str24.indexOf(str6));
                    } else {
                        str12 = str20;
                        obj3 = obj4;
                        i11 = 1;
                        this.f8253a = str24.substring(1, str24.length() - 1);
                    }
                    this.f8254b = str5;
                    if (str24.contains(str6)) {
                        String substring3 = str24.substring(str24.indexOf(str6));
                        this.f8254b = substring3;
                        String substring4 = substring3.substring(i11, substring3.length() - i11);
                        this.f8254b = substring4;
                        this.f8254b = substring4.substring(i11, substring4.length() - i11);
                    }
                    if (this.f8253a.equals("KEYWORD") && !this.f8254b.equals("cls")) {
                        if (this.f8254b.equals("fun")) {
                            i(str4);
                            i22 = i11;
                        } else if (!this.f8254b.equals(str3) && (this.f8254b.equals(str) || this.f8254b.equals("else"))) {
                            i21 = i11;
                        }
                    }
                    if (this.f8253a.equals("ID") && i21 == 0 && z29 && !z30 && i20 == 0) {
                        i(str21 + i19);
                        i12 = i19;
                        i20 = i11;
                    } else {
                        i12 = i23;
                    }
                    obj4 = obj3;
                    if (!this.f8253a.equals(obj4)) {
                        str7 = str;
                        str16 = str2;
                        str17 = str23;
                    } else if (!z29) {
                        str7 = str;
                        str16 = str2;
                        str17 = str23;
                        i(str16);
                    } else if (i20 != 0) {
                        StringBuilder sb2 = new StringBuilder();
                        str7 = str;
                        sb2.append(str12);
                        sb2.append(i19);
                        i(sb2.toString());
                        str17 = str23;
                        z30 = true;
                        str11 = str21;
                        this.f8253a.equals("STRING");
                        this.f8253a.equals("INT");
                        this.f8253a.equals("FLOAT");
                        str10 = str17;
                        if (this.f8253a.equals("ADD") || !z30) {
                            str8 = str3;
                            list = list4;
                            i10 = i24;
                            str13 = str6;
                            str9 = str5;
                            str14 = str22;
                        } else if (z31) {
                            str8 = str3;
                            list = list4;
                            i10 = i24;
                            str13 = str6;
                            str9 = str5;
                            str14 = str22;
                            str15 = str4;
                            if (z10) {
                                i("FOUND THE " + (i10 + 1) + " OPERATOR, ITS A ADD AND THERES A MULT OR DIV WAITING FIRST, IGNORING");
                                obj2 = obj;
                                if (this.f8253a.equals(obj2)) {
                                }
                                z11 = z28;
                                boolean z32 = z11;
                                if (this.f8253a.equals("MUL")) {
                                }
                                z12 = z32;
                                boolean z33 = z12;
                                if (this.f8253a.equals("DIV")) {
                                }
                                z13 = z33;
                                if (this.f8253a.equals("LPAREN")) {
                                }
                                if (this.f8253a.equals("RPAREN")) {
                                }
                                if (this.f8253a.equals("COMMA")) {
                                }
                                if (this.f8253a.equals("SEMICOLON")) {
                                }
                                if (this.f8253a.equals("LBRACE")) {
                                }
                                if (this.f8253a.equals("RBRACE")) {
                                }
                                i23 = i12;
                                z28 = z13;
                                i19++;
                                obj = obj2;
                                str20 = str12;
                                str21 = str11;
                                str5 = str9;
                                str4 = str15;
                                str23 = str10;
                                str22 = str14;
                                list3 = list;
                                str6 = str13;
                                str3 = str8;
                                i24 = i10;
                                str = str7;
                            } else {
                                list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                z28 = true;
                                obj2 = obj;
                                if (this.f8253a.equals(obj2)) {
                                }
                                z11 = z28;
                                boolean z322 = z11;
                                if (this.f8253a.equals("MUL")) {
                                }
                                z12 = z322;
                                boolean z332 = z12;
                                if (this.f8253a.equals("DIV")) {
                                }
                                z13 = z332;
                                if (this.f8253a.equals("LPAREN")) {
                                }
                                if (this.f8253a.equals("RPAREN")) {
                                }
                                if (this.f8253a.equals("COMMA")) {
                                }
                                if (this.f8253a.equals("SEMICOLON")) {
                                }
                                if (this.f8253a.equals("LBRACE")) {
                                }
                                if (this.f8253a.equals("RBRACE")) {
                                }
                                i23 = i12;
                                z28 = z13;
                                i19++;
                                obj = obj2;
                                str20 = str12;
                                str21 = str11;
                                str5 = str9;
                                str4 = str15;
                                str23 = str10;
                                str22 = str14;
                                list3 = list;
                                str6 = str13;
                                str3 = str8;
                                i24 = i10;
                                str = str7;
                            }
                        } else {
                            i10 = i24;
                            if (i10 == 0) {
                                str13 = str6;
                                str8 = str3;
                                list = list4;
                                if (list.get(i19 + 1).equals("[SUB]")) {
                                    list = a(i19, i12, i10, list);
                                    str9 = str5;
                                    str14 = str22;
                                    z28 = true;
                                } else {
                                    str14 = str22;
                                    i(str14);
                                    i10++;
                                    str9 = str5;
                                }
                            } else {
                                str13 = str6;
                                str8 = str3;
                                list = list4;
                                str14 = str22;
                                if (z10) {
                                    str9 = str5;
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("FOUND THE ");
                                    str15 = str4;
                                    sb3.append(i10 + 1);
                                    sb3.append(" OPERATOR, ITS A ADD AND THERES A MULT OR DIV WAITING FIRST, IGNORING");
                                    i(sb3.toString());
                                    obj2 = obj;
                                    if (this.f8253a.equals(obj2)) {
                                        if (!z31) {
                                        }
                                        boolean z3222 = z11;
                                        if (this.f8253a.equals("MUL")) {
                                        }
                                        z12 = z3222;
                                        boolean z3322 = z12;
                                        if (this.f8253a.equals("DIV")) {
                                        }
                                        z13 = z3322;
                                        if (this.f8253a.equals("LPAREN")) {
                                        }
                                        if (this.f8253a.equals("RPAREN")) {
                                        }
                                        if (this.f8253a.equals("COMMA")) {
                                        }
                                        if (this.f8253a.equals("SEMICOLON")) {
                                        }
                                        if (this.f8253a.equals("LBRACE")) {
                                        }
                                        if (this.f8253a.equals("RBRACE")) {
                                        }
                                        i23 = i12;
                                        z28 = z13;
                                        i19++;
                                        obj = obj2;
                                        str20 = str12;
                                        str21 = str11;
                                        str5 = str9;
                                        str4 = str15;
                                        str23 = str10;
                                        str22 = str14;
                                        list3 = list;
                                        str6 = str13;
                                        str3 = str8;
                                        i24 = i10;
                                        str = str7;
                                    }
                                    z11 = z28;
                                    boolean z32222 = z11;
                                    if (this.f8253a.equals("MUL")) {
                                    }
                                    z12 = z32222;
                                    boolean z33222 = z12;
                                    if (this.f8253a.equals("DIV")) {
                                    }
                                    z13 = z33222;
                                    if (this.f8253a.equals("LPAREN")) {
                                    }
                                    if (this.f8253a.equals("RPAREN")) {
                                    }
                                    if (this.f8253a.equals("COMMA")) {
                                    }
                                    if (this.f8253a.equals("SEMICOLON")) {
                                    }
                                    if (this.f8253a.equals("LBRACE")) {
                                    }
                                    if (this.f8253a.equals("RBRACE")) {
                                    }
                                    i23 = i12;
                                    z28 = z13;
                                    i19++;
                                    obj = obj2;
                                    str20 = str12;
                                    str21 = str11;
                                    str5 = str9;
                                    str4 = str15;
                                    str23 = str10;
                                    str22 = str14;
                                    list3 = list;
                                    str6 = str13;
                                    str3 = str8;
                                    i24 = i10;
                                    str = str7;
                                } else {
                                    str9 = str5;
                                    list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                    str15 = str4;
                                    z28 = true;
                                    obj2 = obj;
                                    if (this.f8253a.equals(obj2) && z30) {
                                        if (!z31) {
                                            if (i10 == 0) {
                                                if (e(i19, list)) {
                                                    list = b(i19, i12, i10, list);
                                                } else if (f(i19, list)) {
                                                    i("FOUND THE FIRST OPERATOR, SUB INSIDE A EXPRESSION");
                                                    i10++;
                                                } else {
                                                    list = a(i19 - 1, i12, i10, list);
                                                }
                                            } else if (z10) {
                                                i("FOUND THE " + (i10 + 1) + " OPERATOR, ITS A SUB AND THERES A MULT OR DIV WAITING FIRST, IGNORING");
                                            } else {
                                                list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                            }
                                            z11 = true;
                                        } else if (i10 == 0) {
                                            i("FOUND THE FIRST OPERATOR, SUB INSIDE A EXPRESSION");
                                            i10++;
                                        } else if (z10) {
                                            i("FOUND THE " + (i10 + 1) + " OPERATOR, ITS A SUB AND THERES A MULT OR DIV WAITING FIRST, IGNORING");
                                        } else {
                                            list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                            z11 = true;
                                        }
                                        boolean z322222 = z11;
                                        if (this.f8253a.equals("MUL") && z30) {
                                            if (!z31) {
                                                list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                            } else if (i10 != 0) {
                                                list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                            } else if (list.get(i19 + 1).equals("[SUB]")) {
                                                list = a(i19, i12, i10, list);
                                            } else {
                                                i(str14);
                                                i10++;
                                            }
                                            z12 = true;
                                            boolean z332222 = z12;
                                            if (this.f8253a.equals("DIV") && z30) {
                                                if (!z31) {
                                                    list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                                } else if (i10 != 0) {
                                                    list = list.get(i19 + 1).equals("[SUB]") ? a(i19, i12, i10, list) : b(i19, i12, i10, list);
                                                } else if (list.get(i19 + 1).equals("[SUB]")) {
                                                    list = a(i19, i12, i10, list);
                                                } else {
                                                    i(str14);
                                                    i10++;
                                                }
                                                z13 = true;
                                                if (this.f8253a.equals("LPAREN")) {
                                                    if (!z29) {
                                                        i("LPAREN DETECTED OUTSIDE A FUNCTION, IGNORING");
                                                    } else if (i20 != 0) {
                                                        i("LPAREN DETECTED, ENTERING EXPRESSION AT " + i19);
                                                        z30 = true;
                                                        z31 = true;
                                                    } else {
                                                        i("LPAREN DETECTED OUTSIDE A LINE, IGNORING");
                                                    }
                                                }
                                                if (this.f8253a.equals("RPAREN") && z30 && z31) {
                                                    i("LEAVING EXPRESSION BY RPAREN");
                                                    i10 = 0;
                                                    z31 = false;
                                                }
                                                if (this.f8253a.equals("COMMA") && z30) {
                                                    i("RESETING EXPRESSION BY COMMA");
                                                    i10 = 0;
                                                }
                                                if (this.f8253a.equals("SEMICOLON") && z30) {
                                                    i("LEAVING EXPRESSION BY SEMICOLON");
                                                    i10 = 0;
                                                    z30 = false;
                                                    i20 = 0;
                                                }
                                                if (this.f8253a.equals("LBRACE")) {
                                                    if (i22 != 0) {
                                                        i("ENTERING FUNCTION");
                                                        z29 = true;
                                                    }
                                                    if (z29 && i21 != 0) {
                                                        i21 = 0;
                                                    }
                                                }
                                                if (this.f8253a.equals("RBRACE") || !z29) {
                                                    i23 = i12;
                                                    z28 = z13;
                                                } else {
                                                    i("LEAVING FUNCTION");
                                                    i23 = i12;
                                                    z28 = z13;
                                                    z29 = false;
                                                    i22 = 0;
                                                }
                                                i19++;
                                                obj = obj2;
                                                str20 = str12;
                                                str21 = str11;
                                                str5 = str9;
                                                str4 = str15;
                                                str23 = str10;
                                                str22 = str14;
                                                list3 = list;
                                                str6 = str13;
                                                str3 = str8;
                                                i24 = i10;
                                                str = str7;
                                            }
                                            z13 = z332222;
                                            if (this.f8253a.equals("LPAREN")) {
                                            }
                                            if (this.f8253a.equals("RPAREN")) {
                                                i("LEAVING EXPRESSION BY RPAREN");
                                                i10 = 0;
                                                z31 = false;
                                            }
                                            if (this.f8253a.equals("COMMA")) {
                                                i("RESETING EXPRESSION BY COMMA");
                                                i10 = 0;
                                            }
                                            if (this.f8253a.equals("SEMICOLON")) {
                                                i("LEAVING EXPRESSION BY SEMICOLON");
                                                i10 = 0;
                                                z30 = false;
                                                i20 = 0;
                                            }
                                            if (this.f8253a.equals("LBRACE")) {
                                            }
                                            if (this.f8253a.equals("RBRACE")) {
                                            }
                                            i23 = i12;
                                            z28 = z13;
                                            i19++;
                                            obj = obj2;
                                            str20 = str12;
                                            str21 = str11;
                                            str5 = str9;
                                            str4 = str15;
                                            str23 = str10;
                                            str22 = str14;
                                            list3 = list;
                                            str6 = str13;
                                            str3 = str8;
                                            i24 = i10;
                                            str = str7;
                                        }
                                        z12 = z322222;
                                        boolean z3322222 = z12;
                                        if (this.f8253a.equals("DIV")) {
                                            if (!z31) {
                                            }
                                            z13 = true;
                                            if (this.f8253a.equals("LPAREN")) {
                                            }
                                            if (this.f8253a.equals("RPAREN")) {
                                            }
                                            if (this.f8253a.equals("COMMA")) {
                                            }
                                            if (this.f8253a.equals("SEMICOLON")) {
                                            }
                                            if (this.f8253a.equals("LBRACE")) {
                                            }
                                            if (this.f8253a.equals("RBRACE")) {
                                            }
                                            i23 = i12;
                                            z28 = z13;
                                            i19++;
                                            obj = obj2;
                                            str20 = str12;
                                            str21 = str11;
                                            str5 = str9;
                                            str4 = str15;
                                            str23 = str10;
                                            str22 = str14;
                                            list3 = list;
                                            str6 = str13;
                                            str3 = str8;
                                            i24 = i10;
                                            str = str7;
                                        }
                                        z13 = z3322222;
                                        if (this.f8253a.equals("LPAREN")) {
                                        }
                                        if (this.f8253a.equals("RPAREN")) {
                                        }
                                        if (this.f8253a.equals("COMMA")) {
                                        }
                                        if (this.f8253a.equals("SEMICOLON")) {
                                        }
                                        if (this.f8253a.equals("LBRACE")) {
                                        }
                                        if (this.f8253a.equals("RBRACE")) {
                                        }
                                        i23 = i12;
                                        z28 = z13;
                                        i19++;
                                        obj = obj2;
                                        str20 = str12;
                                        str21 = str11;
                                        str5 = str9;
                                        str4 = str15;
                                        str23 = str10;
                                        str22 = str14;
                                        list3 = list;
                                        str6 = str13;
                                        str3 = str8;
                                        i24 = i10;
                                        str = str7;
                                    }
                                    z11 = z28;
                                    boolean z3222222 = z11;
                                    if (this.f8253a.equals("MUL")) {
                                        if (!z31) {
                                        }
                                        z12 = true;
                                        boolean z33222222 = z12;
                                        if (this.f8253a.equals("DIV")) {
                                        }
                                        z13 = z33222222;
                                        if (this.f8253a.equals("LPAREN")) {
                                        }
                                        if (this.f8253a.equals("RPAREN")) {
                                        }
                                        if (this.f8253a.equals("COMMA")) {
                                        }
                                        if (this.f8253a.equals("SEMICOLON")) {
                                        }
                                        if (this.f8253a.equals("LBRACE")) {
                                        }
                                        if (this.f8253a.equals("RBRACE")) {
                                        }
                                        i23 = i12;
                                        z28 = z13;
                                        i19++;
                                        obj = obj2;
                                        str20 = str12;
                                        str21 = str11;
                                        str5 = str9;
                                        str4 = str15;
                                        str23 = str10;
                                        str22 = str14;
                                        list3 = list;
                                        str6 = str13;
                                        str3 = str8;
                                        i24 = i10;
                                        str = str7;
                                    }
                                    z12 = z3222222;
                                    boolean z332222222 = z12;
                                    if (this.f8253a.equals("DIV")) {
                                    }
                                    z13 = z332222222;
                                    if (this.f8253a.equals("LPAREN")) {
                                    }
                                    if (this.f8253a.equals("RPAREN")) {
                                    }
                                    if (this.f8253a.equals("COMMA")) {
                                    }
                                    if (this.f8253a.equals("SEMICOLON")) {
                                    }
                                    if (this.f8253a.equals("LBRACE")) {
                                    }
                                    if (this.f8253a.equals("RBRACE")) {
                                    }
                                    i23 = i12;
                                    z28 = z13;
                                    i19++;
                                    obj = obj2;
                                    str20 = str12;
                                    str21 = str11;
                                    str5 = str9;
                                    str4 = str15;
                                    str23 = str10;
                                    str22 = str14;
                                    list3 = list;
                                    str6 = str13;
                                    str3 = str8;
                                    i24 = i10;
                                    str = str7;
                                }
                            }
                        }
                        str15 = str4;
                        obj2 = obj;
                        if (this.f8253a.equals(obj2)) {
                        }
                        z11 = z28;
                        boolean z32222222 = z11;
                        if (this.f8253a.equals("MUL")) {
                        }
                        z12 = z32222222;
                        boolean z3322222222 = z12;
                        if (this.f8253a.equals("DIV")) {
                        }
                        z13 = z3322222222;
                        if (this.f8253a.equals("LPAREN")) {
                        }
                        if (this.f8253a.equals("RPAREN")) {
                        }
                        if (this.f8253a.equals("COMMA")) {
                        }
                        if (this.f8253a.equals("SEMICOLON")) {
                        }
                        if (this.f8253a.equals("LBRACE")) {
                        }
                        if (this.f8253a.equals("RBRACE")) {
                        }
                        i23 = i12;
                        z28 = z13;
                        i19++;
                        obj = obj2;
                        str20 = str12;
                        str21 = str11;
                        str5 = str9;
                        str4 = str15;
                        str23 = str10;
                        str22 = str14;
                        list3 = list;
                        str6 = str13;
                        str3 = str8;
                        i24 = i10;
                        str = str7;
                    } else {
                        str7 = str;
                        str17 = str23;
                        i(str17);
                        str16 = str2;
                    }
                    str2 = str16;
                    str11 = str21;
                    this.f8253a.equals("STRING");
                    this.f8253a.equals("INT");
                    this.f8253a.equals("FLOAT");
                    str10 = str17;
                    if (this.f8253a.equals("ADD")) {
                    }
                    str8 = str3;
                    list = list4;
                    i10 = i24;
                    str13 = str6;
                    str9 = str5;
                    str14 = str22;
                    str15 = str4;
                    obj2 = obj;
                    if (this.f8253a.equals(obj2)) {
                    }
                    z11 = z28;
                    boolean z322222222 = z11;
                    if (this.f8253a.equals("MUL")) {
                    }
                    z12 = z322222222;
                    boolean z33222222222 = z12;
                    if (this.f8253a.equals("DIV")) {
                    }
                    z13 = z33222222222;
                    if (this.f8253a.equals("LPAREN")) {
                    }
                    if (this.f8253a.equals("RPAREN")) {
                    }
                    if (this.f8253a.equals("COMMA")) {
                    }
                    if (this.f8253a.equals("SEMICOLON")) {
                    }
                    if (this.f8253a.equals("LBRACE")) {
                    }
                    if (this.f8253a.equals("RBRACE")) {
                    }
                    i23 = i12;
                    z28 = z13;
                    i19++;
                    obj = obj2;
                    str20 = str12;
                    str21 = str11;
                    str5 = str9;
                    str4 = str15;
                    str23 = str10;
                    str22 = str14;
                    list3 = list;
                    str6 = str13;
                    str3 = str8;
                    i24 = i10;
                    str = str7;
                } else {
                    str7 = str;
                    str12 = str20;
                    str8 = str3;
                    str10 = str23;
                    list = list4;
                    i10 = i24;
                    str11 = str21;
                    str13 = str6;
                    str9 = str5;
                }
            }
            str14 = str22;
            str15 = str4;
            obj2 = obj;
            i19++;
            obj = obj2;
            str20 = str12;
            str21 = str11;
            str5 = str9;
            str4 = str15;
            str23 = str10;
            str22 = str14;
            list3 = list;
            str6 = str13;
            str3 = str8;
            i24 = i10;
            str = str7;
        }
        return list3;
    }

    public final String d() {
        return "" + System.currentTimeMillis();
    }

    public final boolean e(int x10, List<String> entries) {
        if (x10 > 1) {
            String str = entries.get(x10 - 1);
            String substring = str.contains("@") ? str.substring(1, str.indexOf("@")) : str.substring(1, str.length() - 1);
            if (str.contains("@")) {
                String substring2 = str.substring(str.indexOf("@"));
                String substring3 = substring2.substring(1, substring2.length() - 1);
                substring3.substring(1, substring3.length() - 1);
            }
            if (substring.equals("ID")) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(int x10, List<String> entries) {
        if (x10 > 1) {
            String str = entries.get(x10 - 1);
            String substring = str.contains("@") ? str.substring(1, str.indexOf("@")) : str.substring(1, str.length() - 1);
            if (str.contains("@")) {
                String substring2 = str.substring(str.indexOf("@"));
                String substring3 = substring2.substring(1, substring2.length() - 1);
                substring3.substring(1, substring3.length() - 1);
            }
            if (substring.equals("INT") || substring.equals("FLOAT")) {
                return true;
            }
        }
        return false;
    }

    public final String g(e insertion) {
        String str = "Temp" + d();
        insertion.f8250b.add(k(TypedValues.Custom.S_FLOAT, "KEYWORD"));
        insertion.f8250b.add(k(str, "ID"));
        insertion.f8250b.add(l("EQUAL"));
        insertion.f8250b.add(k("0.0", "FLOAT"));
        insertion.f8250b.add(l("SEMICOLON"));
        return str;
    }

    public final void h(e insertion, String varName, String entry, String operator, String secondEntry) {
        insertion.f8250b.add(k(varName, "ID"));
        insertion.f8250b.add(l("EQUAL"));
        insertion.f8250b.add(entry);
        insertion.f8250b.add(operator);
        insertion.f8250b.add(secondEntry);
        insertion.f8250b.add(l("SEMICOLON"));
    }

    public final void i(String message) {
    }

    public String j(String code) {
        String replaceAll = code.replaceAll("]\\[", "]@<ENTRY>@\\[");
        List<String> linkedList = new LinkedList<>();
        for (String str : replaceAll.split("@<ENTRY>@")) {
            linkedList.add(str);
        }
        while (this.f8256d) {
            i("STARTING LOOP AGAIN");
            linkedList = c(linkedList);
            for (e eVar : this.f8255c) {
                i("INSERTING AT " + eVar.f8249a + " THIS: " + eVar.toString());
                linkedList.addAll(eVar.f8249a + 1, eVar.f8250b);
            }
            this.f8255c.clear();
        }
        i("BREAKING WHILE, FINISH");
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            sb2.append(linkedList.get(i10));
        }
        return sb2.toString();
    }

    public String k(String text, String type) {
        return "[" + type + "@'" + text + "']";
    }

    public String l(String type) {
        return "[" + type + "]";
    }
}
