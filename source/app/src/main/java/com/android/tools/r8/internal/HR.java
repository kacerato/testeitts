package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ResourceShrinker;
import com.android.tools.r8.origin.PathOrigin;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import w2.C15883c;

public final class HR {

    public final HashMap f40761a;

    public final Collection f40762b;

    public final Collection f40763c;

    public final ArrayList f40764d;

    public List f40765e;

    public final InterfaceC5976Tl0 f40766f;

    public final ArrayList f40767g;

    public final HashMap f40768h;

    public HR(HashMap hashMap, Collection collection, ArrayList arrayList, HashMap hashMap2, Collection collection2, ArrayList arrayList2, List list, InterfaceC5976Tl0 interfaceC5976Tl0) {
        this.f40761a = hashMap;
        this.f40762b = collection;
        this.f40767g = arrayList;
        this.f40768h = hashMap2;
        this.f40763c = collection2;
        this.f40764d = arrayList2;
        this.f40765e = list;
        this.f40766f = interfaceC5976Tl0;
    }

    public static FR a(FR fr) {
        return fr;
    }

    public static FR b(FR fr) {
        return fr;
    }

    public static String d(C8623ng0 c8623ng0) {
        return " " + ((Object) c8623ng0);
    }

    public static String f(C8623ng0 c8623ng0) {
        return " " + ((Object) c8623ng0);
    }

    public final GR c() {
        Collection<?> b10;
        int i10 = 2;
        int i11 = 3;
        int i12 = 0;
        C10277xb0 c10277xb0 = new C10277xb0(this.f40766f);
        Iterator it = this.f40768h.o().iterator();
        while (it.hasNext()) {
            c10277xb0.a((C6795ci0) C6795ci0.f47137i.parseFrom(((FR) it.next()).f40197a), false);
        }
        List<String> list = this.f40765e;
        if (list != null) {
            U10 u10 = new U10();
            for (String str : list) {
                if ((AbstractC5349Iq0.b(str, " ") || AbstractC5349Iq0.b(str, "\t")) && AbstractC5349Iq0.a(str, "->")) {
                    List b11 = AbstractC5349Iq0.b(i10, str, new String[]{"->"});
                    String obj = AbstractC5349Iq0.a((String) b11.get(i12)).toString();
                    String a10 = AbstractC5349Iq0.a(obj, '(', obj);
                    int a11 = AbstractC5349Iq0.a(a10, C15883c.f126249O, 6);
                    if (a11 != -1) {
                        a10 = a10.substring(a11 + 1, a10.length());
                        GJ.b(a10, "substring(...)");
                    }
                    String obj2 = AbstractC5349Iq0.a((String) b11.get(1)).toString();
                    C8866p50 c8866p50 = u10.f44654c;
                    if (c8866p50 != null) {
                        LinkedHashMap linkedHashMap = u10.f44653b;
                        C4968Cc c4968Cc = new C4968Cc((String) c8866p50.f51437c, obj2);
                        C8866p50 c8866p502 = u10.f44654c;
                        GJ.a(c8866p502);
                        linkedHashMap.put(c4968Cc, new C4968Cc((String) c8866p502.f51436b, a10));
                    }
                } else if (AbstractC5349Iq0.a(str, "->")) {
                    List b12 = AbstractC5349Iq0.b(i10, str, new String[]{"->"});
                    String obj3 = AbstractC5349Iq0.a((String) b12.get(i12)).toString();
                    String str2 = (String) b12.get(1);
                    char[] cArr = new char[i11];
                    
                    cArr[0] = ' ';
                    cArr[1] = '\t';
                    cArr[2] = ':';
                    GJ.c(str2, "<this>");
                    int length = str2.length() - 1;
                    int i13 = i12;
                    int i14 = i13;
                    while (i13 <= length) {
                        char charAt = str2.charAt(i14 == 0 ? i13 : length);
                        int i15 = 0;
                        while (true) {
                            if (i15 >= i11) {
                                i15 = -1;
                                break;
                            }
                            if (charAt == cArr[i15]) {
                                break;
                            }
                            i15++;
                            i11 = 3;
                        }
                        boolean z10 = i15 >= 0;
                        if (i14 != 0) {
                            if (!z10) {
                                break;
                            }
                            length--;
                        } else if (z10) {
                            i13++;
                        } else {
                            i14 = 1;
                        }
                        i11 = 3;
                    }
                    String obj4 = str2.subSequence(i13, length + 1).toString();
                    u10.f44654c = new C8866p50(obj3, obj4);
                    u10.f44652a.put(obj4, obj3);
                    i10 = 2;
                    i11 = 3;
                    i12 = 0;
                }
            }
            c10277xb0.f44526c = new V10(u10);
            this.f40765e = null;
        }
        for (Map.Entry entry : this.f40761a.entrySet()) {
            Path path = Paths.get("in_memory_r8_" + ((String) entry.getKey()), new String[0]);
            byte[] bArr = (byte[]) entry.getValue();
            C5344Io c5344Io = new C5344Io(path, c10277xb0);
            GJ.c(bArr, "bytes");
            ResourceShrinker.run(new ResourceShrinker.Builder().addProgramResourceProvider(new C9776ub0(ProgramResource.fromBytes(new PathOrigin(path), ProgramResource.Kind.DEX, bArr, null))).build(), new C9023q2(c5344Io));
        }
        ArrayList arrayList = this.f40767g;
        int size = arrayList.size();
        int i16 = 0;
        while (i16 < size) {
            Object obj5 = arrayList.get(i16);
            i16++;
            E80.a((C9800uj0) C9800uj0.f52927g.parseFrom(((FR) obj5).f40197a), c10277xb0);
        }
        ArrayList arrayList2 = this.f40764d;
        int size2 = arrayList2.size();
        int i17 = 0;
        while (i17 < size2) {
            Object obj6 = arrayList2.get(i17);
            i17++;
            AbstractC9827us0.a(a((byte[]) obj6), c10277xb0);
        }
        final AbstractC8552nC a12 = new C8051kC(4).a(((Map) this.f40763c.stream().collect(Collectors.toMap(new Function() {
            @Override
            public final Object apply(Object obj7) {
                return ((FR) obj7).a();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj7) {
                return HR.a((FR) obj7);
            }
        }))).entrySet()).a((Map) this.f40762b.stream().collect(Collectors.toMap(new Function() {
            @Override
            public final Object apply(Object obj7) {
                return ((FR) obj7).a();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj7) {
                return HR.b((FR) obj7);
            }
        }))).a();
        Iterator it2 = this.f40768h.o().iterator();
        while (it2.hasNext()) {
            final C6795ci0 c6795ci0 = (C6795ci0) C6795ci0.f47137i.parseFrom(((FR) it2.next()).f40197a);
            new C5600Na0(new InterfaceC5210Gf0() {
                @Override
                public final byte[] a(String str3) {
                    return HR.a(AbstractC8552nC.this, str3);
                }
            }, new InterfaceC8676ny() {
                @Override
                public final Object a(Object obj7) {
                    return HR.a(C6795ci0.this, (AbstractC5963Tf0) obj7);
                }
            }).a(c10277xb0);
        }
        C7789ig0 c7789ig0 = c10277xb0.f44525b;
        c7789ig0.b();
        c10277xb0.a();
        InterfaceC5976Tl0 interfaceC5976Tl0 = this.f40766f;
        final C7789ig0 c7789ig02 = c10277xb0.f44525b;
        Objects.requireNonNull(c7789ig02);
        interfaceC5976Tl0.a(new Supplier() {
            @Override
            public final Object get() {
                return C7789ig0.this.a();
            }
        });
        List unmodifiableList = Collections.unmodifiableList(c10277xb0.f44525b.f49012b);
        GJ.b(unmodifiableList, "unmodifiableList(_resources)");
        ArrayList arrayList3 = new ArrayList(AbstractC4987Cj0.a(unmodifiableList, new Consumer() {
            @Override
            public final void accept(Object obj7) {
                HR.this.a((List) obj7);
            }
        }));
        IC ic2 = new IC();
        Iterator it3 = AbstractC6114Vx.b(this.f40763c, this.f40762b).iterator();
        while (true) {
            GK gk2 = (GK) it3;
            if (!gk2.hasNext()) {
                break;
            }
            FR fr = (FR) gk2.next();
            if (AbstractC5905Sf0.a(c7789ig0, fr.f40198b.toString())) {
                ic2.a(fr.f40198b.toString());
                if (fr.f40199c) {
                    String str3 = fr.f40198b.toString();
                    GJ.c(str3, "path");
                    List b13 = AbstractC5349Iq0.b(str3, new char[]{'/'}, 3);
                    String str4 = (String) b13.get(1);
                    String str5 = (String) b13.get(2);
                    EnumC5789Qf0 a13 = EnumC5789Qf0.a(str4);
                    if (a13 == null) {
                        b10 = C6049Ut.f44892b;
                    } else {
                        String c10 = AbstractC5349Iq0.c(str5, '.');
                        List list2 = (List) AbstractC6171Wx.f45588b.get(a13);
                        if (list2 == null) {
                            list2 = Collections.EMPTY_LIST;
                        }
                        GJ.b(list2, "getRelatedResourceTypes(folderType)");
                        ArrayList arrayList4 = new ArrayList();
                        for (Object obj7 : list2) {
                            if (((EnumC8289lg0) obj7) != EnumC8289lg0.ID) {
                                arrayList4.add(obj7);
                            }
                        }
                        ArrayList arrayList5 = new ArrayList();
                        int size3 = arrayList4.size();
                        int i18 = 0;
                        while (i18 < size3) {
                            Object obj8 = arrayList4.get(i18);
                            i18++;
                            EnumC8289lg0 enumC8289lg0 = (EnumC8289lg0) obj8;
                            GJ.b(enumC8289lg0, "it");
                            arrayList5.addAll(c7789ig0.a(enumC8289lg0, c10));
                        }
                        b10 = AbstractC6303Ze.b(arrayList5);
                    }
                    arrayList3.removeAll(b10);
                }
            }
        }
        this.f40766f.a(new Supplier() {
            @Override
            public final Object get() {
                return HR.b();
            }
        });
        arrayList3.forEach(new Consumer() {
            @Override
            public final void accept(Object obj9) {
                HR.this.c((C8623ng0) obj9);
            }
        });
        List a14 = a(arrayList3);
        HashMap hashMap = new HashMap();
        for (Map.Entry entry2 : this.f40768h.entrySet()) {
            C6795ci0 c6795ci02 = (C6795ci0) C6795ci0.f47137i.parseFrom(((FR) entry2.getKey()).f40197a);
            GJ.c(c6795ci02, "<this>");
            GJ.c(a14, "ids");
            hashMap.put((FeatureSplit) entry2.getValue(), AbstractC8122kg0.a(c6795ci02, a14, false));
        }
        return new GR(ic2.a(), hashMap);
    }

    public final void e(final C8623ng0 c8623ng0) {
        this.f40766f.a(new Supplier() {
            @Override
            public final Object get() {
                return HR.d(C8623ng0.this);
            }
        });
    }

    public static C6795ci0 a(C6795ci0 c6795ci0, AbstractC5963Tf0 abstractC5963Tf0) {
        return c6795ci0;
    }

    public static String b() {
        return "Unused resources are: ";
    }

    public static byte[] a(AbstractC8552nC abstractC8552nC, String str) {
        return ((FR) abstractC8552nC.get(str)).f40197a;
    }

    public static String a() {
        return "The root reachable resources are:";
    }

    public final void a(List list) {
        this.f40766f.a(new Supplier() {
            @Override
            public final Object get() {
                return HR.a();
            }
        });
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                HR.this.e((C8623ng0) obj);
            }
        });
    }

    public static List a(ArrayList arrayList) {
        return (List) arrayList.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return HR.a((C8623ng0) obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer valueOf;
                valueOf = Integer.valueOf(((C8623ng0) obj).f51025f);
                return valueOf;
            }
        }).collect(Collectors.toList());
    }

    public static boolean a(C8623ng0 c8623ng0) {
        return c8623ng0.f51022c != EnumC8289lg0.ID;
    }

    public static Reader a(byte[] bArr) {
        int length = bArr.length;
        if (length == 0) {
            return new StringReader("");
        }
        byte b10 = bArr[0];
        if (b10 != -17) {
            if (b10 != -2) {
                if (b10 != -1) {
                    if (b10 == 0 && length >= 4 && b10 == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) {
                        return new InputStreamReader(new ByteArrayInputStream(bArr, 4, length - 4), "UTF-32BE");
                    }
                } else if (length >= 2 && bArr[1] == -2) {
                    if (length >= 4 && bArr[2] == 0 && bArr[3] == 0) {
                        return new InputStreamReader(new ByteArrayInputStream(bArr, 4, length - 4), "UTF-32LE");
                    }
                    return new InputStreamReader(new ByteArrayInputStream(bArr, 2, length - 2), StandardCharsets.UTF_16LE);
                }
            } else if (length >= 2 && bArr[1] == -1) {
                return new InputStreamReader(new ByteArrayInputStream(bArr, 2, length - 2), StandardCharsets.UTF_16BE);
            }
        } else if (length >= 3 && bArr[1] == -69 && bArr[2] == -65) {
            return new InputStreamReader(new ByteArrayInputStream(bArr, 3, length - 3), StandardCharsets.UTF_8);
        }
        return new InputStreamReader(new ByteArrayInputStream(bArr), StandardCharsets.UTF_8);
    }

    public final void c(final C8623ng0 c8623ng0) {
        this.f40766f.a(new Supplier() {
            @Override
            public final Object get() {
                return HR.f(C8623ng0.this);
            }
        });
    }
}
