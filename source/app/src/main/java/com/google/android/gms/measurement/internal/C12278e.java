package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12030b7;
import com.google.android.gms.internal.measurement.C12169r3;
import com.google.android.gms.internal.measurement.C12178s3;
import com.google.android.gms.internal.measurement.C12196u3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class C12278e extends N6 {

    public String f63129d;

    public Set f63130e;

    public Map f63131f;

    public Long f63132g;

    public Long f63133h;

    public C12278e(c7 c7Var) {
        super(c7Var);
    }

    @Override
    public final boolean l() {
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:1|(2:2|(2:4|(2:6|7)(1:524))(2:525|526))|8|(3:10|11|12)|16|(6:19|20|21|22|23|(14:(7:25|26|27|28|(1:30)(3:499|(1:501)(1:503)|502)|31|(1:34)(1:33))|35|36|37|38|39|40|(2:42|43)(3:458|(6:459|460|461|462|463|(1:466)(1:465))|467)|44|(1:46)(6:287|(12:289|290|291|292|293|(6:442|302|303|(3:398|(6:401|(2:437|438)(2:405|(8:411|412|(4:415|(2:417|418)(1:420)|419|413)|421|422|(4:425|(3:427|428|429)(1:431)|430|423)|432|433)(4:407|408|409|410))|434|435|410|399)|440)|305|306)|(4:295|(1:297)|298|299)|302|303|(0)|305|306)(1:457)|307|(10:310|(3:314|(4:317|(5:319|320|(1:322)(1:326)|323|324)(1:327)|325|315)|328)|329|(3:333|(4:336|(3:341|342|343)|344|334)|347)|348|(3:350|(6:353|(2:355|(3:357|358|359))(1:362)|360|361|359|351)|363)|364|(3:373|(8:376|(1:378)|379|(1:381)|382|(3:384|385|386)(1:388)|387|374)|389)|390|308)|396|397)|47|(3:181|(6:184|(2:186|(9:192|193|(12:195|196|197|198|199|200|201|202|203|204|(2:(9:206|207|208|209|210|(3:212|213|214)(1:262)|215|216|(1:219)(1:218))|220)(3:266|267|268)|221)(1:284)|222|(4:225|(3:243|244|245)(6:227|228|(2:229|(2:231|(1:233)(2:234|235))(2:241|242))|(1:237)|238|239)|240|223)|246|247|248|191)(1:188))(1:285)|189|190|191|182)|286)|49|(6:51|(3:53|(6:56|(8:58|59|60|61|62|63|64|(3:(9:66|67|68|69|70|(1:72)(1:129)|73|74|(1:77)(1:76))|78|79)(4:136|137|128|79))(1:154)|80|(2:81|(2:83|(3:119|120|121)(8:85|(2:86|(4:88|(3:90|(1:92)(1:115)|93)(1:116)|94|(1:1)(2:98|(1:100)(2:101|102)))(2:117|118))|109|(1:111)(1:113)|112|104|105|106))(0))|122|54)|155)|156|(9:159|160|161|162|163|164|(2:166|167)(1:169)|168|157)|177|178)(2:179|180))(2:507|508))|523|36|37|38|39|40|(0)(0)|44|(0)(0)|47|(0)|49|(0)(0)|(4:(0)|(0)|(0)|(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x09b4, code lost:
    
        if (r13 != false) goto L482;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0896, code lost:
    
        if (r13 == null) goto L367;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x02ee, code lost:
    
        if (r5 == null) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x01bb, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x01bc, code lost:
    
        r18 = "audience_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0229, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x022a, code lost:
    
        r18 = "audience_id";
        r19 = "data";
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0232, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x0227, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x022f, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x0170, code lost:
    
        if (r5 == null) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0a66  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x070b  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x06e5  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x06ef  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01aa A[Catch: all -> 0x01b8, SQLiteException -> 0x01bb, TRY_LEAVE, TryCatch #19 {all -> 0x01b8, blocks: (B:40:0x01a4, B:42:0x01aa, B:458:0x01c2, B:459:0x01c7, B:461:0x01d1, B:462:0x01e1, B:463:0x020d, B:476:0x01f0, B:479:0x0200, B:482:0x0206, B:470:0x0233), top: B:39:0x01a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:451:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x01c2 A[Catch: all -> 0x01b8, SQLiteException -> 0x01bb, TRY_ENTER, TryCatch #19 {all -> 0x01b8, blocks: (B:40:0x01a4, B:42:0x01aa, B:458:0x01c2, B:459:0x01c7, B:461:0x01d1, B:462:0x01e1, B:463:0x020d, B:476:0x01f0, B:479:0x0200, B:482:0x0206, B:470:0x0233), top: B:39:0x01a4 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x079f  */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v28 */
    /* JADX WARN: Type inference failed for: r5v59, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v60 */
    /* JADX WARN: Type inference failed for: r5v61, types: [java.lang.String] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List m(String str, List list, List list2, Long l10, Long l11, boolean z10) {
        int i10;
        int i11;
        boolean z11;
        AutoCloseable autoCloseable;
        Map map;
        String str2;
        String str3;
        Cursor cursor;
        ?? r13;
        String str4;
        ArrayMap arrayMap;
        String str5;
        String str6;
        String str7;
        String str8;
        List<com.google.android.gms.internal.measurement.M1> list3;
        String str9;
        Cursor cursor2;
        Map map2;
        Iterator it;
        String str10;
        w7 w7Var;
        Iterator it2;
        String str11;
        long j10;
        String str12;
        Iterator it3;
        Map map3;
        Iterator it4;
        Cursor cursor3;
        List list4;
        Iterator it5;
        String str13;
        Map map4;
        String str14;
        com.google.android.gms.internal.measurement.U1 u12;
        C12370p3 c12370p3;
        Integer num;
        Cursor cursor4;
        Cursor cursor5;
        List list5;
        ArrayMap arrayMap2;
        AutoCloseable autoCloseable2;
        Cursor cursor6;
        List list6;
        String str15 = "current_results";
        G0.A.l(str);
        G0.A.r(list);
        G0.A.r(list2);
        this.f63129d = str;
        this.f63130e = new HashSet();
        this.f63131f = new ArrayMap();
        this.f63132g = l10;
        this.f63133h = l11;
        Iterator it6 = list.iterator();
        while (true) {
            i10 = 0;
            i11 = 1;
            if (!it6.hasNext()) {
                z11 = false;
                break;
            }
            if ("_s".equals(((C12026b3) it6.next()).H())) {
                z11 = true;
                break;
            }
        }
        C12030b7.a();
        C12370p3 c12370p32 = this.f62917a;
        boolean H10 = c12370p32.w().H(this.f63129d, C12281e2.f63149G0);
        C12030b7.a();
        boolean H11 = c12370p32.w().H(this.f63129d, C12281e2.f63147F0);
        if (z11) {
            C12421w F02 = this.f62657b.F0();
            String str16 = this.f63129d;
            F02.j();
            F02.h();
            G0.A.l(str16);
            ContentValues contentValues = new ContentValues();
            ?? r52 = "current_session_count";
            contentValues.put("current_session_count", (Integer) 0);
            try {
                r52 = "events";
                F02.w0().update("events", contentValues, "app_id = ?", new String[]{str16});
                autoCloseable = "events";
            } catch (SQLiteException e10) {
                F02.f62917a.a().o().c("Error resetting session-scoped event counts. appId", B2.x(str16), e10);
                autoCloseable = r52;
            }
        }
        Map emptyMap = Collections.emptyMap();
        String str17 = "Failed to merge filter. appId";
        String str18 = "Database error querying filters. appId";
        String str19 = "data";
        String str20 = "audience_id";
        try {
            if (H11 && H10) {
                C12421w F03 = this.f62657b.F0();
                String str21 = this.f63129d;
                G0.A.l(str21);
                ArrayMap arrayMap3 = new ArrayMap();
                try {
                    try {
                        cursor6 = F03.w0().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str21}, null, null, null);
                        try {
                        } catch (SQLiteException e11) {
                            e = e11;
                            F03.f62917a.a().o().c("Database error querying filters. appId", B2.x(str21), e);
                            emptyMap = Collections.emptyMap();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        autoCloseable2 = autoCloseable;
                        if (autoCloseable2 != null) {
                            autoCloseable2.close();
                        }
                        throw th;
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    cursor6 = null;
                } catch (Throwable th3) {
                    th = th3;
                    autoCloseable2 = null;
                    if (autoCloseable2 != null) {
                    }
                    throw th;
                }
                if (cursor6.moveToFirst()) {
                    while (true) {
                        try {
                            com.google.android.gms.internal.measurement.M1 m12 = (com.google.android.gms.internal.measurement.M1) ((com.google.android.gms.internal.measurement.L1) h7.W(com.google.android.gms.internal.measurement.M1.Q(), cursor6.getBlob(i11))).q();
                            if (m12.K()) {
                                Integer valueOf = Integer.valueOf(cursor6.getInt(i10));
                                List list7 = (List) arrayMap3.get(valueOf);
                                if (list7 == null) {
                                    list6 = new ArrayList();
                                    arrayMap3.put(valueOf, list6);
                                } else {
                                    list6 = list7;
                                }
                                list6.add(m12);
                            }
                        } catch (IOException e13) {
                            F03.f62917a.a().o().c("Failed to merge filter. appId", B2.x(str21), e13);
                        }
                        if (!cursor6.moveToNext()) {
                            break;
                        }
                        i10 = 0;
                        i11 = 1;
                    }
                    cursor6.close();
                    map = arrayMap3;
                    C12421w F04 = this.f62657b.F0();
                    String str22 = this.f63129d;
                    F04.j();
                    F04.h();
                    G0.A.l(str22);
                    cursor = F04.w0().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str22}, null, null, null);
                    if (cursor.moveToFirst()) {
                        Map emptyMap2 = Collections.emptyMap();
                        cursor.close();
                        r13 = emptyMap2;
                        str2 = "audience_id";
                        str3 = "data";
                    } else {
                        ArrayMap arrayMap4 = new ArrayMap();
                        while (true) {
                            int i12 = cursor.getInt(0);
                            try {
                                arrayMap4.put(Integer.valueOf(i12), (C12178s3) ((C12169r3) h7.W(C12178s3.M(), cursor.getBlob(1))).q());
                                arrayMap2 = arrayMap4;
                                str2 = str20;
                                str3 = str19;
                            } catch (IOException e14) {
                                arrayMap2 = arrayMap4;
                                str2 = str20;
                                try {
                                    str3 = str19;
                                    try {
                                        F04.f62917a.a().o().d("Failed to merge filter results. appId, audienceId, error", B2.x(str22), Integer.valueOf(i12), e14);
                                    } catch (SQLiteException e15) {
                                        e = e15;
                                        F04.f62917a.a().o().c("Database error querying filter results. appId", B2.x(str22), e);
                                        Map emptyMap3 = Collections.emptyMap();
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        r13 = emptyMap3;
                                        if (r13.isEmpty()) {
                                        }
                                        String str23 = "Skipping failed audience ID";
                                        if (!list.isEmpty()) {
                                        }
                                        String str24 = str15;
                                        String str25 = str6;
                                        if (!z10) {
                                        }
                                    }
                                } catch (SQLiteException e16) {
                                    e = e16;
                                    str3 = str19;
                                    F04.f62917a.a().o().c("Database error querying filter results. appId", B2.x(str22), e);
                                    Map emptyMap32 = Collections.emptyMap();
                                    if (cursor != null) {
                                    }
                                    r13 = emptyMap32;
                                    if (r13.isEmpty()) {
                                    }
                                    String str232 = "Skipping failed audience ID";
                                    if (!list.isEmpty()) {
                                    }
                                    String str242 = str15;
                                    String str252 = str6;
                                    if (!z10) {
                                    }
                                }
                            }
                            if (!cursor.moveToNext()) {
                                break;
                            }
                            arrayMap4 = arrayMap2;
                            str20 = str2;
                            str19 = str3;
                        }
                        cursor.close();
                        r13 = arrayMap2;
                    }
                    if (r13.isEmpty()) {
                        HashSet<Integer> hashSet = new HashSet(r13.o());
                        if (z11) {
                            String str26 = this.f63129d;
                            C12421w F05 = this.f62657b.F0();
                            String str27 = this.f63129d;
                            F05.j();
                            F05.h();
                            G0.A.l(str27);
                            Map arrayMap5 = new ArrayMap();
                            SQLiteDatabase w02 = F05.w0();
                            try {
                                try {
                                    cursor2 = w02.rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str27, str27});
                                    try {
                                    } catch (SQLiteException e17) {
                                        e = e17;
                                        F05.f62917a.a().o().c("Database error querying scoped filters. appId", B2.x(str27), e);
                                        arrayMap5 = Collections.emptyMap();
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    if (w02 != null) {
                                        w02.close();
                                    }
                                    throw th;
                                }
                            } catch (SQLiteException e18) {
                                e = e18;
                                cursor2 = null;
                            } catch (Throwable th5) {
                                th = th5;
                                w02 = null;
                                if (w02 != null) {
                                }
                                throw th;
                            }
                            if (!cursor2.moveToFirst()) {
                                arrayMap5 = Collections.emptyMap();
                                cursor2.close();
                                G0.A.l(str26);
                                G0.A.r(r13);
                                ArrayMap arrayMap6 = new ArrayMap();
                                if (!r13.isEmpty()) {
                                    Iterator it7 = r13.o().iterator();
                                    while (it7.hasNext()) {
                                        Integer num2 = (Integer) it7.next();
                                        num2.intValue();
                                        C12178s3 c12178s3 = (C12178s3) r13.get(num2);
                                        List list8 = (List) arrayMap5.get(num2);
                                        if (list8 == null || list8.isEmpty()) {
                                            map2 = arrayMap5;
                                            it = it7;
                                            str10 = str18;
                                            arrayMap6.put(num2, c12178s3);
                                        } else {
                                            c7 c7Var = this.f62657b;
                                            map2 = arrayMap5;
                                            it = it7;
                                            List R10 = c7Var.K0().R(c12178s3.G(), list8);
                                            if (R10.isEmpty()) {
                                                arrayMap5 = map2;
                                                it7 = it;
                                            } else {
                                                C12169r3 c12169r3 = (C12169r3) c12178s3.q();
                                                c12169r3.w();
                                                c12169r3.v(R10);
                                                List R11 = c7Var.K0().R(c12178s3.E(), list8);
                                                c12169r3.u();
                                                c12169r3.t(R11);
                                                ArrayList arrayList = new ArrayList();
                                                Iterator it8 = c12178s3.I().iterator();
                                                while (it8.hasNext()) {
                                                    Iterator it9 = it8;
                                                    com.google.android.gms.internal.measurement.Z2 z22 = (com.google.android.gms.internal.measurement.Z2) it8.next();
                                                    String str28 = str18;
                                                    if (!list8.contains(Integer.valueOf(z22.F()))) {
                                                        arrayList.add(z22);
                                                    }
                                                    it8 = it9;
                                                    str18 = str28;
                                                }
                                                str10 = str18;
                                                c12169r3.y();
                                                c12169r3.x(arrayList);
                                                ArrayList arrayList2 = new ArrayList();
                                                for (C12196u3 c12196u3 : c12178s3.K()) {
                                                    if (!list8.contains(Integer.valueOf(c12196u3.F()))) {
                                                        arrayList2.add(c12196u3);
                                                    }
                                                }
                                                c12169r3.A();
                                                c12169r3.z(arrayList2);
                                                arrayMap6.put(num2, (C12178s3) c12169r3.q());
                                            }
                                        }
                                        arrayMap5 = map2;
                                        it7 = it;
                                        str18 = str10;
                                    }
                                }
                                str4 = str18;
                                arrayMap = arrayMap6;
                            }
                            do {
                                Integer valueOf2 = Integer.valueOf(cursor2.getInt(0));
                                Collection collection = (List) arrayMap5.get(valueOf2);
                                if (collection == null) {
                                    collection = new ArrayList();
                                    arrayMap5.put(valueOf2, collection);
                                }
                                collection.add(Integer.valueOf(cursor2.getInt(1)));
                            } while (cursor2.moveToNext());
                            cursor2.close();
                            G0.A.l(str26);
                            G0.A.r(r13);
                            ArrayMap arrayMap62 = new ArrayMap();
                            if (!r13.isEmpty()) {
                            }
                            str4 = str18;
                            arrayMap = arrayMap62;
                        } else {
                            str4 = "Database error querying filters. appId";
                            arrayMap = r13;
                        }
                        Map map5 = r13;
                        for (Integer num3 : hashSet) {
                            num3.intValue();
                            C12178s3 c12178s32 = (C12178s3) arrayMap.get(num3);
                            BitSet bitSet = new BitSet();
                            BitSet bitSet2 = new BitSet();
                            ArrayMap arrayMap7 = new ArrayMap();
                            if (c12178s32 != null && c12178s32.J() != 0) {
                                for (com.google.android.gms.internal.measurement.Z2 z23 : c12178s32.I()) {
                                    if (z23.E()) {
                                        arrayMap7.put(Integer.valueOf(z23.F()), z23.G() ? Long.valueOf(z23.H()) : null);
                                    }
                                }
                            }
                            ArrayMap arrayMap8 = new ArrayMap();
                            if (c12178s32 != null && c12178s32.L() != 0) {
                                Iterator it10 = c12178s32.K().iterator();
                                while (it10.hasNext()) {
                                    C12196u3 c12196u32 = (C12196u3) it10.next();
                                    if (c12196u32.E() && c12196u32.H() > 0) {
                                        arrayMap8.put(Integer.valueOf(c12196u32.F()), Long.valueOf(c12196u32.I(c12196u32.H() - 1)));
                                        arrayMap = arrayMap;
                                        it10 = it10;
                                    }
                                }
                            }
                            ArrayMap arrayMap9 = arrayMap;
                            if (c12178s32 != null) {
                                int i13 = 0;
                                while (i13 < c12178s32.F() * 64) {
                                    if (h7.P(c12178s32.E(), i13)) {
                                        str9 = str17;
                                        this.f62917a.a().w().c("Filter already evaluated. audience ID, filter ID", num3, Integer.valueOf(i13));
                                        bitSet2.set(i13);
                                        if (h7.P(c12178s32.G(), i13)) {
                                            bitSet.set(i13);
                                            i13++;
                                            str17 = str9;
                                        }
                                    } else {
                                        str9 = str17;
                                    }
                                    arrayMap7.remove(Integer.valueOf(i13));
                                    i13++;
                                    str17 = str9;
                                }
                            }
                            String str29 = str17;
                            C12178s3 c12178s33 = (C12178s3) map5.get(num3);
                            if (H11 && H10 && (list3 = (List) map.get(num3)) != null && this.f63133h != null && this.f63132g != null) {
                                for (com.google.android.gms.internal.measurement.M1 m13 : list3) {
                                    int F10 = m13.F();
                                    long longValue = this.f63133h.longValue() / 1000;
                                    if (m13.N()) {
                                        longValue = this.f63132g.longValue() / 1000;
                                    }
                                    Integer valueOf3 = Integer.valueOf(F10);
                                    if (arrayMap7.containsKey(valueOf3)) {
                                        arrayMap7.put(valueOf3, Long.valueOf(longValue));
                                    }
                                    if (arrayMap8.containsKey(valueOf3)) {
                                        arrayMap8.put(valueOf3, Long.valueOf(longValue));
                                    }
                                }
                            }
                            this.f63131f.put(num3, new v7(this, this.f63129d, c12178s33, bitSet, bitSet2, arrayMap7, arrayMap8, null));
                            str17 = str29;
                            H10 = H10;
                            map = map;
                            arrayMap = arrayMap9;
                            str2 = str2;
                            map5 = map5;
                        }
                        str5 = str17;
                        str6 = str2;
                        str7 = str3;
                        str8 = str4;
                    } else {
                        str8 = "Database error querying filters. appId";
                        str5 = "Failed to merge filter. appId";
                        str6 = str2;
                        str7 = str3;
                    }
                    String str2322 = "Skipping failed audience ID";
                    if (!list.isEmpty()) {
                        w7 w7Var2 = new w7(this, null);
                        ArrayMap arrayMap10 = new ArrayMap();
                        Iterator it11 = list.iterator();
                        while (it11.hasNext()) {
                            C12026b3 c12026b3 = (C12026b3) it11.next();
                            C12026b3 a10 = w7Var2.a(this.f63129d, c12026b3);
                            if (a10 != null) {
                                c7 c7Var2 = this.f62657b;
                                E d02 = c7Var2.F0().d0(this.f63129d, c12026b3, a10.H());
                                c7Var2.F0().y0(d02);
                                if (!z10) {
                                    long j11 = d02.f62602c;
                                    String H12 = a10.H();
                                    Map map6 = (Map) arrayMap10.get(H12);
                                    if (map6 == null) {
                                        C12421w F06 = c7Var2.F0();
                                        String str30 = this.f63129d;
                                        F06.j();
                                        F06.h();
                                        G0.A.l(str30);
                                        G0.A.l(H12);
                                        w7Var = w7Var2;
                                        ArrayMap arrayMap11 = new ArrayMap();
                                        it2 = it11;
                                        str11 = str15;
                                        str12 = str6;
                                        String str31 = str7;
                                        try {
                                            try {
                                                j10 = j11;
                                                try {
                                                    Cursor query = F06.w0().query("event_filters", new String[]{str12, str31}, "app_id=? AND event_name=?", new String[]{str30, H12}, null, null, null);
                                                    try {
                                                        try {
                                                            if (query.moveToFirst()) {
                                                                while (true) {
                                                                    try {
                                                                        com.google.android.gms.internal.measurement.M1 m14 = (com.google.android.gms.internal.measurement.M1) ((com.google.android.gms.internal.measurement.L1) h7.W(com.google.android.gms.internal.measurement.M1.Q(), query.getBlob(1))).q();
                                                                        Integer valueOf4 = Integer.valueOf(query.getInt(0));
                                                                        List list9 = (List) arrayMap11.get(valueOf4);
                                                                        if (list9 == null) {
                                                                            str7 = str31;
                                                                            try {
                                                                                list4 = new ArrayList();
                                                                                arrayMap11.put(valueOf4, list4);
                                                                            } catch (SQLiteException e19) {
                                                                                e = e19;
                                                                                cursor3 = query;
                                                                                try {
                                                                                    F06.f62917a.a().o().c(str8, B2.x(str30), e);
                                                                                    map6 = Collections.emptyMap();
                                                                                    if (cursor3 != null) {
                                                                                        cursor3.close();
                                                                                    }
                                                                                    arrayMap10.put(H12, map6);
                                                                                    it3 = map6.o().iterator();
                                                                                    while (it3.hasNext()) {
                                                                                    }
                                                                                    w7Var2 = w7Var;
                                                                                    it11 = it2;
                                                                                    str6 = str12;
                                                                                    str15 = str11;
                                                                                } catch (Throwable th6) {
                                                                                    th = th6;
                                                                                    if (cursor3 != null) {
                                                                                        cursor3.close();
                                                                                    }
                                                                                    throw th;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            str7 = str31;
                                                                            list4 = list9;
                                                                        }
                                                                        list4.add(m14);
                                                                    } catch (IOException e20) {
                                                                        str7 = str31;
                                                                        F06.f62917a.a().o().c(str5, B2.x(str30), e20);
                                                                    }
                                                                    if (!query.moveToNext()) {
                                                                        break;
                                                                    }
                                                                    str31 = str7;
                                                                }
                                                                query.close();
                                                                map6 = arrayMap11;
                                                            } else {
                                                                str7 = str31;
                                                                map6 = Collections.emptyMap();
                                                                query.close();
                                                            }
                                                        } catch (Throwable th7) {
                                                            th = th7;
                                                            cursor3 = query;
                                                            if (cursor3 != null) {
                                                            }
                                                            throw th;
                                                        }
                                                    } catch (SQLiteException e21) {
                                                        e = e21;
                                                        str7 = str31;
                                                    }
                                                } catch (SQLiteException e22) {
                                                    e = e22;
                                                    str7 = str31;
                                                    cursor3 = null;
                                                    F06.f62917a.a().o().c(str8, B2.x(str30), e);
                                                    map6 = Collections.emptyMap();
                                                    if (cursor3 != null) {
                                                    }
                                                    arrayMap10.put(H12, map6);
                                                    it3 = map6.o().iterator();
                                                    while (it3.hasNext()) {
                                                    }
                                                    w7Var2 = w7Var;
                                                    it11 = it2;
                                                    str6 = str12;
                                                    str15 = str11;
                                                }
                                            } catch (Throwable th8) {
                                                th = th8;
                                                cursor3 = null;
                                            }
                                        } catch (SQLiteException e23) {
                                            e = e23;
                                            str7 = str31;
                                            j10 = j11;
                                        }
                                        arrayMap10.put(H12, map6);
                                    } else {
                                        w7Var = w7Var2;
                                        it2 = it11;
                                        str11 = str15;
                                        j10 = j11;
                                        str12 = str6;
                                    }
                                    it3 = map6.o().iterator();
                                    while (it3.hasNext()) {
                                        Integer num4 = (Integer) it3.next();
                                        int intValue = num4.intValue();
                                        if (this.f63130e.contains(num4)) {
                                            this.f62917a.a().w().b("Skipping failed audience ID", num4);
                                        } else {
                                            Iterator it12 = ((List) map6.get(num4)).iterator();
                                            boolean z12 = true;
                                            while (true) {
                                                if (!it12.hasNext()) {
                                                    map3 = map6;
                                                    it4 = it3;
                                                    break;
                                                }
                                                com.google.android.gms.internal.measurement.M1 m15 = (com.google.android.gms.internal.measurement.M1) it12.next();
                                                C12254b c12254b = new C12254b(this, this.f63129d, intValue, m15);
                                                map3 = map6;
                                                it4 = it3;
                                                z12 = c12254b.k(this.f63132g, this.f63133h, a10, j10, d02, o(intValue, m15.F()));
                                                if (!z12) {
                                                    this.f63130e.add(num4);
                                                    break;
                                                }
                                                n(num4).a(c12254b);
                                                map6 = map3;
                                                it3 = it4;
                                            }
                                            if (!z12) {
                                                this.f63130e.add(num4);
                                            }
                                            map6 = map3;
                                            it3 = it4;
                                        }
                                    }
                                    w7Var2 = w7Var;
                                    it11 = it2;
                                    str6 = str12;
                                    str15 = str11;
                                }
                            }
                        }
                    }
                    String str2422 = str15;
                    String str2522 = str6;
                    if (!z10) {
                        return new ArrayList();
                    }
                    if (!list2.isEmpty()) {
                        ArrayMap arrayMap12 = new ArrayMap();
                        Iterator it13 = list2.iterator();
                        while (it13.hasNext()) {
                            com.google.android.gms.internal.measurement.E3 e32 = (com.google.android.gms.internal.measurement.E3) it13.next();
                            String G10 = e32.G();
                            Map map7 = (Map) arrayMap12.get(G10);
                            if (map7 == null) {
                                C12421w F07 = this.f62657b.F0();
                                String str32 = this.f63129d;
                                F07.j();
                                F07.h();
                                G0.A.l(str32);
                                G0.A.l(G10);
                                ArrayMap arrayMap13 = new ArrayMap();
                                str13 = str7;
                                try {
                                    cursor5 = F07.w0().query("property_filters", new String[]{str2522, str13}, "app_id=? AND property_name=?", new String[]{str32, G10}, null, null, null);
                                    try {
                                        try {
                                        } catch (Throwable th9) {
                                            th = th9;
                                            cursor4 = cursor5;
                                            if (cursor4 != null) {
                                                cursor4.close();
                                            }
                                            throw th;
                                        }
                                    } catch (SQLiteException e24) {
                                        e = e24;
                                        it5 = it13;
                                    }
                                } catch (SQLiteException e25) {
                                    e = e25;
                                    it5 = it13;
                                    cursor5 = null;
                                } catch (Throwable th10) {
                                    th = th10;
                                    cursor4 = null;
                                }
                                if (cursor5.moveToFirst()) {
                                    while (true) {
                                        try {
                                            com.google.android.gms.internal.measurement.U1 u13 = (com.google.android.gms.internal.measurement.U1) ((com.google.android.gms.internal.measurement.T1) h7.W(com.google.android.gms.internal.measurement.U1.M(), cursor5.getBlob(1))).q();
                                            Integer valueOf5 = Integer.valueOf(cursor5.getInt(0));
                                            List list10 = (List) arrayMap13.get(valueOf5);
                                            if (list10 == null) {
                                                list5 = new ArrayList();
                                                arrayMap13.put(valueOf5, list5);
                                            } else {
                                                list5 = list10;
                                            }
                                            list5.add(u13);
                                            it5 = it13;
                                        } catch (IOException e26) {
                                            it5 = it13;
                                            try {
                                                F07.f62917a.a().o().c("Failed to merge filter", B2.x(str32), e26);
                                            } catch (SQLiteException e27) {
                                                e = e27;
                                                F07.f62917a.a().o().c(str8, B2.x(str32), e);
                                                map7 = Collections.emptyMap();
                                            }
                                        }
                                        if (!cursor5.moveToNext()) {
                                            break;
                                        }
                                        it13 = it5;
                                    }
                                    cursor5.close();
                                    map7 = arrayMap13;
                                    arrayMap12.put(G10, map7);
                                } else {
                                    it5 = it13;
                                    map7 = Collections.emptyMap();
                                    cursor5.close();
                                    arrayMap12.put(G10, map7);
                                }
                            } else {
                                it5 = it13;
                                str13 = str7;
                            }
                            Iterator it14 = map7.o().iterator();
                            while (true) {
                                if (it14.hasNext()) {
                                    Integer num5 = (Integer) it14.next();
                                    int intValue2 = num5.intValue();
                                    if (this.f63130e.contains(num5)) {
                                        this.f62917a.a().w().b(str2322, num5);
                                        break;
                                    }
                                    Iterator it15 = ((List) map7.get(num5)).iterator();
                                    boolean z13 = true;
                                    while (true) {
                                        if (!it15.hasNext()) {
                                            map4 = map7;
                                            str14 = str2322;
                                            break;
                                        }
                                        u12 = (com.google.android.gms.internal.measurement.U1) it15.next();
                                        c12370p3 = this.f62917a;
                                        if (Log.isLoggable(c12370p3.a().z(), 2)) {
                                            C12448z2 w10 = c12370p3.a().w();
                                            if (u12.E()) {
                                                num = Integer.valueOf(u12.F());
                                                map4 = map7;
                                            } else {
                                                map4 = map7;
                                                num = null;
                                            }
                                            str14 = str2322;
                                            w10.d("Evaluating filter. audience, filter, property", num5, num, c12370p3.D().c(u12.G()));
                                            c12370p3.a().w().b("Filter definition", this.f62657b.K0().M(u12));
                                        } else {
                                            map4 = map7;
                                            str14 = str2322;
                                        }
                                        if (!u12.E() || u12.F() > 256) {
                                            break;
                                        }
                                        C12270d c12270d = new C12270d(this, this.f63129d, intValue2, u12);
                                        z13 = c12270d.k(this.f63132g, this.f63133h, e32, o(intValue2, u12.F()));
                                        if (!z13) {
                                            this.f63130e.add(num5);
                                            break;
                                        }
                                        n(num5).a(c12270d);
                                        map7 = map4;
                                        str2322 = str14;
                                    }
                                    c12370p3.a().r().c("Invalid property filter ID. appId, id", B2.x(this.f63129d), String.valueOf(u12.E() ? Integer.valueOf(u12.F()) : null));
                                    this.f63130e.add(num5);
                                    map7 = map4;
                                    str2322 = str14;
                                }
                            }
                            it13 = it5;
                            str7 = str13;
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    Set<Integer> o10 = this.f63131f.o();
                    o10.removeAll(this.f63130e);
                    for (Integer num6 : o10) {
                        int intValue3 = num6.intValue();
                        v7 v7Var = (v7) this.f63131f.get(num6);
                        G0.A.r(v7Var);
                        com.google.android.gms.internal.measurement.P2 b10 = v7Var.b(intValue3);
                        arrayList3.add(b10);
                        C12421w F08 = this.f62657b.F0();
                        String str33 = this.f63129d;
                        C12178s3 G11 = b10.G();
                        F08.j();
                        F08.h();
                        G0.A.l(str33);
                        G0.A.r(G11);
                        byte[] g10 = G11.g();
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put("app_id", str33);
                        contentValues2.put(str2522, num6);
                        String str34 = str2422;
                        contentValues2.put(str34, g10);
                        try {
                        } catch (SQLiteException e28) {
                            e = e28;
                        }
                        try {
                            if (F08.w0().insertWithOnConflict("audience_filter_values", null, contentValues2, 5) == -1) {
                                F08.f62917a.a().o().b("Failed to insert filter results (got -1). appId", B2.x(str33));
                            }
                        } catch (SQLiteException e29) {
                            e = e29;
                            F08.f62917a.a().o().c("Error storing filter results. appId", B2.x(str33), e);
                            str2422 = str34;
                        }
                        str2422 = str34;
                    }
                    return arrayList3;
                }
                emptyMap = Collections.emptyMap();
                cursor6.close();
            }
            if (cursor.moveToFirst()) {
            }
            if (r13.isEmpty()) {
            }
            String str23222 = "Skipping failed audience ID";
            if (!list.isEmpty()) {
            }
            String str24222 = str15;
            String str25222 = str6;
            if (!z10) {
            }
        } catch (Throwable th11) {
            th = th11;
            Cursor cursor7 = cursor;
            if (cursor7 != null) {
                cursor7.close();
            }
            throw th;
        }
        map = emptyMap;
        C12421w F042 = this.f62657b.F0();
        String str222 = this.f63129d;
        F042.j();
        F042.h();
        G0.A.l(str222);
        cursor = F042.w0().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str222}, null, null, null);
    }

    public final v7 n(Integer num) {
        if (this.f63131f.containsKey(num)) {
            return (v7) this.f63131f.get(num);
        }
        v7 v7Var = new v7(this, this.f63129d, null);
        this.f63131f.put(num, v7Var);
        return v7Var;
    }

    public final boolean o(int i10, int i11) {
        v7 v7Var = (v7) this.f63131f.get(Integer.valueOf(i10));
        if (v7Var == null) {
            return false;
        }
        return v7Var.c().get(i11);
    }
}
