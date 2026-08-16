package sf;

import Lf.j;
import Mf.l;
import Mf.p;
import Mf.q;
import Vf.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.B0;
import nf.C0;
import nf.F0;
import nf.G0;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.InterfaceC14441w;
import nf.InterfaceC14443y;
import nf.L0;
import nf.M0;
import nf.P0;
import nf.Y;
import nf.Z;
import nf.v0;
import nf.x0;
import nf.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14967d;
import pf.C14960A;
import pf.C14968d0;
import pf.C14970e0;
import pf.C14985q;
import pf.G;
import pf.H;
import pf.I;
import pf.O;
import pf.S;
import pf.n0;

@t0({"SMAP\n_UArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _UArrays.kt\nkotlin/collections/unsigned/UArraysKt___UArraysKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,11271:1\n3993#1:11321\n4001#1:11322\n4009#1:11323\n4017#1:11324\n3993#1:11325\n4001#1:11326\n4009#1:11327\n4017#1:11328\n3993#1:11329\n4001#1:11330\n4009#1:11331\n4017#1:11332\n3993#1:11389\n4001#1:11390\n4009#1:11391\n4017#1:11392\n3993#1:11393\n4001#1:11394\n4009#1:11395\n4017#1:11396\n3993#1:11397\n4001#1:11398\n4009#1:11399\n4017#1:11400\n3993#1:11401\n4001#1:11402\n4009#1:11403\n4017#1:11404\n3993#1:11405\n4001#1:11406\n4009#1:11407\n4017#1:11408\n3993#1:11409\n4001#1:11410\n4009#1:11411\n4017#1:11412\n3993#1:11413\n4001#1:11414\n4009#1:11415\n4017#1:11416\n3993#1:11417\n4001#1:11418\n4009#1:11419\n4017#1:11420\n3993#1:11421\n4001#1:11422\n4009#1:11423\n4017#1:11424\n3993#1:11425\n4001#1:11426\n4009#1:11427\n4017#1:11428\n3993#1:11429\n4001#1:11430\n4009#1:11431\n4017#1:11432\n3993#1:11433\n4001#1:11434\n4009#1:11435\n4017#1:11436\n3993#1:11437\n4001#1:11438\n4009#1:11439\n4017#1:11440\n3993#1:11441\n4001#1:11442\n4009#1:11443\n4017#1:11444\n3993#1:11445\n4001#1:11446\n4009#1:11447\n4017#1:11448\n3993#1:11449\n4001#1:11450\n4009#1:11451\n4017#1:11452\n3993#1:11453\n4001#1:11454\n4009#1:11455\n4017#1:11456\n3993#1:11457\n4001#1:11458\n4009#1:11459\n4017#1:11460\n3993#1:11461\n4001#1:11462\n4009#1:11463\n4017#1:11464\n3993#1:11465\n4001#1:11466\n4009#1:11467\n4017#1:11468\n3993#1:11469\n4001#1:11470\n4009#1:11471\n4017#1:11472\n3993#1:11473\n4001#1:11474\n4009#1:11475\n4017#1:11476\n3993#1:11477\n4001#1:11478\n4009#1:11479\n4017#1:11480\n3993#1:11481\n4001#1:11482\n4009#1:11483\n4017#1:11484\n3993#1:11485\n4001#1:11486\n4009#1:11487\n4017#1:11488\n3993#1:11489\n4001#1:11490\n4009#1:11491\n4017#1:11492\n3993#1:11493\n4001#1:11494\n4009#1:11495\n4017#1:11496\n3993#1:11497\n4001#1:11498\n4009#1:11499\n4017#1:11500\n3993#1:11501\n4001#1:11502\n4009#1:11503\n4017#1:11504\n3993#1:11505\n4001#1:11506\n4009#1:11507\n4017#1:11508\n3993#1:11509\n4001#1:11510\n4009#1:11511\n4017#1:11512\n3993#1:11513\n4001#1:11514\n4009#1:11515\n4017#1:11516\n3993#1:11517\n4001#1:11518\n4009#1:11519\n4017#1:11520\n3993#1:11521\n4001#1:11522\n4009#1:11523\n4017#1:11524\n3993#1:11525\n4001#1:11526\n4009#1:11527\n4017#1:11528\n3993#1:11529\n4001#1:11530\n4009#1:11531\n4017#1:11532\n3993#1:11533\n4001#1:11534\n4009#1:11535\n4017#1:11536\n3993#1:11537\n4001#1:11538\n4009#1:11539\n4017#1:11540\n1827#2,6:11272\n1839#2,6:11278\n1803#2,6:11284\n1815#2,6:11290\n1935#2,6:11296\n1947#2,6:11302\n1911#2,6:11308\n1923#2,6:11314\n1#3:11320\n383#4,7:11333\n383#4,7:11340\n383#4,7:11347\n383#4,7:11354\n383#4,7:11361\n383#4,7:11368\n383#4,7:11375\n383#4,7:11382\n*S KotlinDebug\n*F\n+ 1 _UArrays.kt\nkotlin/collections/unsigned/UArraysKt___UArraysKt\n*L\n1784#1:11321\n1801#1:11322\n1818#1:11323\n1835#1:11324\n2624#1:11325\n2641#1:11326\n2658#1:11327\n2675#1:11328\n2991#1:11329\n3007#1:11330\n3023#1:11331\n3039#1:11332\n5819#1:11389\n5839#1:11390\n5859#1:11391\n5879#1:11392\n5900#1:11393\n5922#1:11394\n5944#1:11395\n5966#1:11396\n6081#1:11397\n6102#1:11398\n6123#1:11399\n6144#1:11400\n6173#1:11401\n6209#1:11402\n6245#1:11403\n6281#1:11404\n6313#1:11405\n6345#1:11406\n6377#1:11407\n6409#1:11408\n6441#1:11409\n6466#1:11410\n6491#1:11411\n6516#1:11412\n6541#1:11413\n6566#1:11414\n6591#1:11415\n6616#1:11416\n6641#1:11417\n6668#1:11418\n6695#1:11419\n6722#1:11420\n6747#1:11421\n6770#1:11422\n6793#1:11423\n6816#1:11424\n6839#1:11425\n6862#1:11426\n6885#1:11427\n6908#1:11428\n6931#1:11429\n6956#1:11430\n6981#1:11431\n7006#1:11432\n7033#1:11433\n7060#1:11434\n7087#1:11435\n7114#1:11436\n7139#1:11437\n7164#1:11438\n7189#1:11439\n7214#1:11440\n7233#1:11441\n7250#1:11442\n7267#1:11443\n7284#1:11444\n7303#1:11445\n7322#1:11446\n7341#1:11447\n7360#1:11448\n7375#1:11449\n7390#1:11450\n7405#1:11451\n7420#1:11452\n7441#1:11453\n7462#1:11454\n7483#1:11455\n7504#1:11456\n7533#1:11457\n7569#1:11458\n7605#1:11459\n7641#1:11460\n7673#1:11461\n7705#1:11462\n7737#1:11463\n7769#1:11464\n7801#1:11465\n7826#1:11466\n7851#1:11467\n7876#1:11468\n7901#1:11469\n7926#1:11470\n7951#1:11471\n7976#1:11472\n8001#1:11473\n8028#1:11474\n8055#1:11475\n8082#1:11476\n8107#1:11477\n8130#1:11478\n8153#1:11479\n8176#1:11480\n8199#1:11481\n8222#1:11482\n8245#1:11483\n8268#1:11484\n8291#1:11485\n8316#1:11486\n8341#1:11487\n8366#1:11488\n8393#1:11489\n8420#1:11490\n8447#1:11491\n8474#1:11492\n8499#1:11493\n8524#1:11494\n8549#1:11495\n8574#1:11496\n8593#1:11497\n8610#1:11498\n8627#1:11499\n8644#1:11500\n8663#1:11501\n8682#1:11502\n8701#1:11503\n8720#1:11504\n8735#1:11505\n8750#1:11506\n8765#1:11507\n8780#1:11508\n8998#1:11509\n9023#1:11510\n9048#1:11511\n9073#1:11512\n9098#1:11513\n9123#1:11514\n9148#1:11515\n9173#1:11516\n9197#1:11517\n9221#1:11518\n9245#1:11519\n9269#1:11520\n9293#1:11521\n9317#1:11522\n9341#1:11523\n9365#1:11524\n9387#1:11525\n9412#1:11526\n9437#1:11527\n9462#1:11528\n9487#1:11529\n9513#1:11530\n9539#1:11531\n9565#1:11532\n9590#1:11533\n9615#1:11534\n9640#1:11535\n9665#1:11536\n9690#1:11537\n9714#1:11538\n9738#1:11539\n9762#1:11540\n890#1:11272,6\n900#1:11278,6\n910#1:11284,6\n920#1:11290,6\n930#1:11296,6\n940#1:11302,6\n950#1:11308,6\n960#1:11314,6\n5022#1:11333,7\n5043#1:11340,7\n5064#1:11347,7\n5085#1:11354,7\n5107#1:11361,7\n5129#1:11368,7\n5151#1:11375,7\n5173#1:11382,7\n*E\n"})
public class g extends C15290b {
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super F0, ? super V>> M A0(long[] jArr, M destination, l<? super F0, ? extends V> valueSelector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$associateWithTo$0");
        M.p(destination, "destination");
        M.p(valueSelector, "valueSelector");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            destination.put(F0.b(r10), valueSelector.invoke(F0.b(r10)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] A1(long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$copyOf$0");
        long[] copyOf = Arrays.copyOf(jArr, i10);
        M.o(copyOf, "copyOf(...)");
        return G0.k(copyOf);
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super x0>> C A2(byte[] bArr, C destination, p<? super Integer, ? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$filterIndexedTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            byte r10 = y0.r(bArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), x0.b(r10)).booleanValue()) {
                destination.add(x0.b(r10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C A3(int[] iArr, C destination, l<? super B0, ? extends Iterable<? extends R>> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$flatMapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            pf.M.t0(destination, transform.invoke(B0.e(C0.t(iArr, i10))));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K> Map<K, List<x0>> A4(byte[] bArr, l<? super x0, ? extends K> keySelector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            K invoke = keySelector.invoke(x0.b(r10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(x0.b(r10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> A5(long[] jArr, p<? super Integer, ? super F0, ? extends R> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$mapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(G0.t(jArr));
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), F0.b(G0.r(jArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final F0 A6(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOrNull$0");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (Long.compareUnsigned(r10, r11) < 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R A7(short[] sArr, Comparator<? super R> comparator, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(L0.b(M0.r(sArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short A8(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$random$0");
        return B8(sArr, Tf.f.f24956b);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> A9(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reversed$0");
        if (G0.w(jArr)) {
            return H.J();
        }
        List<F0> d62 = S.d6(G0.b(jArr));
        O.t1(d62);
        return d62;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final L0 Aa(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$singleOrNull$0");
        if (M0.t(sArr) == 1) {
            return L0.b(M0.r(sArr, 0));
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> Ab(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sortedDescending$0");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        long[] k10 = G0.k(copyOf);
        ab(k10);
        return A9(k10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> Ac(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$takeWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (!predicate.invoke(B0.e(t10)).booleanValue()) {
                break;
            }
            arrayList.add(B0.e(t10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super L0, ? super V>> M B0(short[] sArr, M destination, l<? super L0, ? extends V> valueSelector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$associateWithTo$0");
        M.p(destination, "destination");
        M.p(valueSelector, "valueSelector");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            destination.put(L0.b(r10), valueSelector.invoke(L0.b(r10)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] B1(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$copyOf$0");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        return M0.k(copyOf);
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super F0>> C B2(long[] jArr, C destination, p<? super Integer, ? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$filterIndexedTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            long r10 = G0.r(jArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), F0.b(r10)).booleanValue()) {
                destination.add(F0.b(r10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C B3(byte[] bArr, C destination, l<? super x0, ? extends Iterable<? extends R>> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$flatMapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            pf.M.t0(destination, transform.invoke(x0.b(y0.r(bArr, i10))));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> Map<K, List<V>> B4(int[] iArr, l<? super B0, ? extends K> keySelector, l<? super B0, ? extends V> valueTransform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            K invoke = keySelector.invoke(B0.e(t10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(B0.e(t10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> B5(short[] sArr, p<? super Integer, ? super L0, ? extends R> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$mapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(M0.t(sArr));
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), L0.b(M0.r(sArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final L0 B6(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOrNull$0");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (M.t(r10 & 65535, 65535 & r11) < 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R B7(int[] iArr, Comparator<? super R> comparator, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(B0.e(C0.t(iArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short B8(@NotNull short[] sArr, @NotNull Tf.f random) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$random$0");
        M.p(random, "random");
        if (M0.w(sArr)) {
            throw new NoSuchElementException("Array is empty.");
        }
        return M0.r(sArr, random.m(M0.t(sArr)));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> B9(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reversed$0");
        if (M0.w(sArr)) {
            return H.J();
        }
        List<L0> d62 = S.d6(M0.b(sArr));
        O.t1(d62);
        return d62;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final L0 Ba(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$singleOrNull$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        L0 l02 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                l02 = L0.b(r10);
                z10 = true;
            }
        }
        if (z10) {
            return l02;
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> Bb(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sortedDescending$0");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        short[] k10 = M0.k(copyOf);
        db(k10);
        return B9(k10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> Bc(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$takeWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (!predicate.invoke(L0.b(r10)).booleanValue()) {
                break;
            }
            arrayList.add(L0.b(r10));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int C0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$component1$0");
        return C0.t(iArr, 0);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] C1(long[] jArr, int i10, int i11) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$copyOfRange$0");
        return G0.k(C14985q.k1(jArr, i10, i11));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> C2(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$filterNot$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (!predicate.invoke(x0.b(r10)).booleanValue()) {
                arrayList.add(x0.b(r10));
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R C3(long[] jArr, R r10, p<? super R, ? super F0, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$fold$0");
        M.p(operation, "operation");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, F0.b(G0.r(jArr, i10)));
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K> Map<K, List<F0>> C4(long[] jArr, l<? super F0, ? extends K> keySelector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            K invoke = keySelector.invoke(F0.b(r10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(F0.b(r10));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C C5(int[] iArr, C destination, p<? super Integer, ? super B0, ? extends R> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$mapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            destination.add(transform.invoke(Integer.valueOf(i11), B0.e(C0.t(iArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @j(name = "maxOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final byte C6(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$max$0");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (M.t(r10 & 255, r11 & 255) < 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final B0 C7(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOrNull$0");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (Integer.compareUnsigned(t10, t11) > 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final B0 C8(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$randomOrNull$0");
        return D8(iArr, Tf.f.f24956b);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] C9(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reversedArray$0");
        return C0.m(C14960A.Nr(iArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> Ca(@NotNull long[] jArr, @NotNull Iterable<Integer> indices) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$slice$0");
        M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(F0.b(G0.r(jArr, it.next().intValue())));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int Cb(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sum$0");
        return B0.o(C14960A.tw(iArr));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] Cc(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$toByteArray$0");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte D0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$component1$0");
        return y0.r(bArr, 0);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] D1(byte[] bArr, int i10, int i11) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$copyOfRange$0");
        return y0.k(C14985q.f1(bArr, i10, i11));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> D2(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$filterNot$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (!predicate.invoke(F0.b(r10)).booleanValue()) {
                arrayList.add(F0.b(r10));
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R D3(byte[] bArr, R r10, p<? super R, ? super x0, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$fold$0");
        M.p(operation, "operation");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, x0.b(y0.r(bArr, i10)));
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> Map<K, List<V>> D4(byte[] bArr, l<? super x0, ? extends K> keySelector, l<? super x0, ? extends V> valueTransform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            K invoke = keySelector.invoke(x0.b(r10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(x0.b(r10)));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C D5(short[] sArr, C destination, p<? super Integer, ? super L0, ? extends R> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$mapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            destination.add(transform.invoke(Integer.valueOf(i11), L0.b(M0.r(sArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @j(name = "maxOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final int D6(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$max$0");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (Integer.compareUnsigned(t10, t11) < 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final x0 D7(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOrNull$0");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (M.t(r10 & 255, r11 & 255) > 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final B0 D8(@NotNull int[] iArr, @NotNull Tf.f random) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$randomOrNull$0");
        M.p(random, "random");
        if (C0.z(iArr)) {
            return null;
        }
        return B0.e(C0.t(iArr, random.m(C0.v(iArr))));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] D9(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reversedArray$0");
        return y0.k(C14960A.Jr(bArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> Da(@NotNull int[] iArr, @NotNull Iterable<Integer> indices) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$slice$0");
        M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(B0.e(C0.t(iArr, it.next().intValue())));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int Db(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sum$0");
        int o10 = B0.o(0);
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            o10 = B0.o(o10 + B0.o(y0.r(bArr, i10) & 255));
        }
        return o10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] Dc(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$toIntArray$0");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long E0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$component1$0");
        return G0.r(jArr, 0);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] E1(short[] sArr, int i10, int i11) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$copyOfRange$0");
        return M0.k(C14985q.m1(sArr, i10, i11));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> E2(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$filterNot$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (!predicate.invoke(B0.e(t10)).booleanValue()) {
                arrayList.add(B0.e(t10));
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R E3(int[] iArr, R r10, p<? super R, ? super B0, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$fold$0");
        M.p(operation, "operation");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            r10 = operation.invoke(r10, B0.e(C0.t(iArr, i10)));
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K> Map<K, List<B0>> E4(int[] iArr, l<? super B0, ? extends K> keySelector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            K invoke = keySelector.invoke(B0.e(t10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(B0.e(t10));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C E5(byte[] bArr, C destination, p<? super Integer, ? super x0, ? extends R> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$mapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            destination.add(transform.invoke(Integer.valueOf(i11), x0.b(y0.r(bArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @j(name = "maxOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final long E6(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$max$0");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (Long.compareUnsigned(r10, r11) < 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final F0 E7(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOrNull$0");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (Long.compareUnsigned(r10, r11) > 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final x0 E8(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$randomOrNull$0");
        return H8(bArr, Tf.f.f24956b);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] E9(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reversedArray$0");
        return G0.k(C14960A.Or(jArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> Ea(@NotNull short[] sArr, @NotNull Iterable<Integer> indices) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$slice$0");
        M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(L0.b(M0.r(sArr, it.next().intValue())));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long Eb(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sum$0");
        return F0.i(C14960A.vw(jArr));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] Ec(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$toLongArray$0");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short F0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$component1$0");
        return M0.r(sArr, 0);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] F1(int[] iArr, int i10, int i11) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$copyOfRange$0");
        return C0.m(C14985q.j1(iArr, i10, i11));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> F2(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$filterNot$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (!predicate.invoke(L0.b(r10)).booleanValue()) {
                arrayList.add(L0.b(r10));
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R F3(short[] sArr, R r10, p<? super R, ? super L0, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$fold$0");
        M.p(operation, "operation");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, L0.b(M0.r(sArr, i10)));
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K> Map<K, List<L0>> F4(short[] sArr, l<? super L0, ? extends K> keySelector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            K invoke = keySelector.invoke(L0.b(r10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(L0.b(r10));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C F5(long[] jArr, C destination, p<? super Integer, ? super F0, ? extends R> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$mapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            destination.add(transform.invoke(Integer.valueOf(i11), F0.b(G0.r(jArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @j(name = "maxOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final short F6(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$max$0");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (M.t(r10 & 65535, 65535 & r11) < 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final L0 F7(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOrNull$0");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (M.t(r10 & 65535, 65535 & r11) > 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final F0 F8(@NotNull long[] jArr, @NotNull Tf.f random) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$randomOrNull$0");
        M.p(random, "random");
        if (G0.w(jArr)) {
            return null;
        }
        return F0.b(G0.r(jArr, random.m(G0.t(jArr))));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] F9(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reversedArray$0");
        return M0.k(C14960A.Qr(sArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> Fa(@NotNull byte[] bArr, @NotNull Iterable<Integer> indices) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$slice$0");
        M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(x0.b(y0.r(bArr, it.next().intValue())));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int Fb(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sum$0");
        int o10 = B0.o(0);
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            o10 = B0.o(o10 + B0.o(M0.r(sArr, i10) & 65535));
        }
        return o10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] Fc(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$toShortArray$0");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        return copyOf;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int G0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$component2$0");
        return C0.t(iArr, 1);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int G1(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$count$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            if (predicate.invoke(x0.b(y0.r(bArr, i11))).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super F0>> C G2(long[] jArr, C destination, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$filterNotTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (!predicate.invoke(F0.b(r10)).booleanValue()) {
                destination.add(F0.b(r10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R G3(byte[] bArr, R r10, q<? super Integer, ? super R, ? super x0, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$foldIndexed$0");
        M.p(operation, "operation");
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            r10 = operation.n(Integer.valueOf(i11), r10, x0.b(y0.r(bArr, i10)));
            i10++;
            i11++;
        }
        return r10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, M extends Map<? super K, List<B0>>> M G4(int[] iArr, M destination, l<? super B0, ? extends K> keySelector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            K invoke = keySelector.invoke(B0.e(t10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(B0.e(t10));
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C G5(long[] jArr, C destination, l<? super F0, ? extends R> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$mapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            destination.add(transform.invoke(F0.b(G0.r(jArr, i10))));
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final x0 G6(@NotNull byte[] bArr, @NotNull Comparator<? super x0> comparator) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxWithOrNull$0");
        M.p(comparator, "comparator");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (comparator.compare(x0.b(r10), x0.b(r11)) < 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @j(name = "minOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final byte G7(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$min$0");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (M.t(r10 & 255, r11 & 255) > 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final F0 G8(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$randomOrNull$0");
        return F8(jArr, Tf.f.f24956b);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> G9(long[] jArr, R r10, p<? super R, ? super F0, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$runningFold$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(G0.t(jArr) + 1);
        arrayList.add(r10);
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, F0.b(G0.r(jArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> Ga(@NotNull short[] sArr, @NotNull Vf.l indices) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$slice$0");
        M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C15290b.d(M0.k(C14985q.m1(sArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final int Gb(byte[] bArr, l<? super x0, B0> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumBy$0");
        M.p(selector, "selector");
        int t10 = y0.t(bArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            i10 = B0.o(i10 + selector.invoke(x0.b(y0.r(bArr, i11))).q0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final B0[] Gc(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$toTypedArray$0");
        int v10 = C0.v(iArr);
        B0[] b0Arr = new B0[v10];
        for (int i10 = 0; i10 < v10; i10++) {
            b0Arr[i10] = B0.e(C0.t(iArr, i10));
        }
        return b0Arr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte H0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$component2$0");
        return y0.r(bArr, 1);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int H1(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$count$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            if (predicate.invoke(F0.b(G0.r(jArr, i11))).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super L0>> C H2(short[] sArr, C destination, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$filterNotTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (!predicate.invoke(L0.b(r10)).booleanValue()) {
                destination.add(L0.b(r10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R H3(short[] sArr, R r10, q<? super Integer, ? super R, ? super L0, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$foldIndexed$0");
        M.p(operation, "operation");
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            r10 = operation.n(Integer.valueOf(i11), r10, L0.b(M0.r(sArr, i10)));
            i10++;
            i11++;
        }
        return r10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, M extends Map<? super K, List<x0>>> M H4(byte[] bArr, M destination, l<? super x0, ? extends K> keySelector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            K invoke = keySelector.invoke(x0.b(r10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(x0.b(r10));
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C H5(short[] sArr, C destination, l<? super L0, ? extends R> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$mapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            destination.add(transform.invoke(L0.b(M0.r(sArr, i10))));
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final B0 H6(@NotNull int[] iArr, @NotNull Comparator<? super B0> comparator) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxWithOrNull$0");
        M.p(comparator, "comparator");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (comparator.compare(B0.e(t10), B0.e(t11)) < 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @j(name = "minOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final int H7(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$min$0");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (Integer.compareUnsigned(t10, t11) > 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final x0 H8(@NotNull byte[] bArr, @NotNull Tf.f random) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$randomOrNull$0");
        M.p(random, "random");
        if (y0.w(bArr)) {
            return null;
        }
        return x0.b(y0.r(bArr, random.m(y0.t(bArr))));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> H9(byte[] bArr, R r10, p<? super R, ? super x0, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$runningFold$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(y0.t(bArr) + 1);
        arrayList.add(r10);
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, x0.b(y0.r(bArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> Ha(@NotNull long[] jArr, @NotNull Vf.l indices) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$slice$0");
        M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C15290b.c(G0.k(C14985q.k1(jArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final int Hb(long[] jArr, l<? super F0, B0> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumBy$0");
        M.p(selector, "selector");
        int t10 = G0.t(jArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            i10 = B0.o(i10 + selector.invoke(F0.b(G0.r(jArr, i11))).q0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final x0[] Hc(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$toTypedArray$0");
        int t10 = y0.t(bArr);
        x0[] x0VarArr = new x0[t10];
        for (int i10 = 0; i10 < t10; i10++) {
            x0VarArr[i10] = x0.b(y0.r(bArr, i10));
        }
        return x0VarArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long I0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$component2$0");
        return G0.r(jArr, 1);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int I1(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$count$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        int i10 = 0;
        for (int i11 = 0; i11 < v10; i11++) {
            if (predicate.invoke(B0.e(C0.t(iArr, i11))).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super B0>> C I2(int[] iArr, C destination, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$filterNotTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (!predicate.invoke(B0.e(t10)).booleanValue()) {
                destination.add(B0.e(t10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R I3(long[] jArr, R r10, q<? super Integer, ? super R, ? super F0, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$foldIndexed$0");
        M.p(operation, "operation");
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            r10 = operation.n(Integer.valueOf(i11), r10, F0.b(G0.r(jArr, i10)));
            i10++;
            i11++;
        }
        return r10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V, M extends Map<? super K, List<V>>> M I4(int[] iArr, M destination, l<? super B0, ? extends K> keySelector, l<? super B0, ? extends V> valueTransform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            K invoke = keySelector.invoke(B0.e(t10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(B0.e(t10)));
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C I5(int[] iArr, C destination, l<? super B0, ? extends R> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$mapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            destination.add(transform.invoke(B0.e(C0.t(iArr, i10))));
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final L0 I6(@NotNull short[] sArr, @NotNull Comparator<? super L0> comparator) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxWithOrNull$0");
        M.p(comparator, "comparator");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (comparator.compare(L0.b(r10), L0.b(r11)) < 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @j(name = "minOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final long I7(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$min$0");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (Long.compareUnsigned(r10, r11) > 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final L0 I8(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$randomOrNull$0");
        return J8(sArr, Tf.f.f24956b);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> I9(int[] iArr, R r10, p<? super R, ? super B0, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$runningFold$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(C0.v(iArr) + 1);
        arrayList.add(r10);
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            r10 = operation.invoke(r10, B0.e(C0.t(iArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> Ia(@NotNull byte[] bArr, @NotNull Vf.l indices) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$slice$0");
        M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C15290b.b(y0.k(C14985q.f1(bArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final int Ib(int[] iArr, l<? super B0, B0> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumBy$0");
        M.p(selector, "selector");
        int v10 = C0.v(iArr);
        int i10 = 0;
        for (int i11 = 0; i11 < v10; i11++) {
            i10 = B0.o(i10 + selector.invoke(B0.e(C0.t(iArr, i11))).q0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final F0[] Ic(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$toTypedArray$0");
        int t10 = G0.t(jArr);
        F0[] f0Arr = new F0[t10];
        for (int i10 = 0; i10 < t10; i10++) {
            f0Arr[i10] = F0.b(G0.r(jArr, i10));
        }
        return f0Arr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short J0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$component2$0");
        return M0.r(sArr, 1);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int J1(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$count$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            if (predicate.invoke(L0.b(M0.r(sArr, i11))).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super x0>> C J2(byte[] bArr, C destination, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$filterNotTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (!predicate.invoke(x0.b(r10)).booleanValue()) {
                destination.add(x0.b(r10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R J3(int[] iArr, R r10, q<? super Integer, ? super R, ? super B0, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$foldIndexed$0");
        M.p(operation, "operation");
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            r10 = operation.n(Integer.valueOf(i11), r10, B0.e(C0.t(iArr, i10)));
            i10++;
            i11++;
        }
        return r10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V, M extends Map<? super K, List<V>>> M J4(long[] jArr, M destination, l<? super F0, ? extends K> keySelector, l<? super F0, ? extends V> valueTransform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            K invoke = keySelector.invoke(F0.b(r10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(F0.b(r10)));
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C J5(byte[] bArr, C destination, l<? super x0, ? extends R> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$mapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            destination.add(transform.invoke(x0.b(y0.r(bArr, i10))));
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final F0 J6(@NotNull long[] jArr, @NotNull Comparator<? super F0> comparator) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxWithOrNull$0");
        M.p(comparator, "comparator");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (comparator.compare(F0.b(r10), F0.b(r11)) < 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @j(name = "minOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final short J7(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$min$0");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (M.t(r10 & 65535, 65535 & r11) > 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final L0 J8(@NotNull short[] sArr, @NotNull Tf.f random) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$randomOrNull$0");
        M.p(random, "random");
        if (M0.w(sArr)) {
            return null;
        }
        return L0.b(M0.r(sArr, random.m(M0.t(sArr))));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> J9(short[] sArr, R r10, p<? super R, ? super L0, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$runningFold$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(M0.t(sArr) + 1);
        arrayList.add(r10);
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, L0.b(M0.r(sArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> Ja(@NotNull int[] iArr, @NotNull Vf.l indices) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$slice$0");
        M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C15290b.a(C0.m(C14985q.j1(iArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1)));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final int Jb(short[] sArr, l<? super L0, B0> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumBy$0");
        M.p(selector, "selector");
        int t10 = M0.t(sArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            i10 = B0.o(i10 + selector.invoke(L0.b(M0.r(sArr, i11))).q0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final L0[] Jc(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$toTypedArray$0");
        int t10 = M0.t(sArr);
        L0[] l0Arr = new L0[t10];
        for (int i10 = 0; i10 < t10; i10++) {
            l0Arr[i10] = L0.b(M0.r(sArr, i10));
        }
        return l0Arr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int K0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$component3$0");
        return C0.t(iArr, 2);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> K1(@NotNull byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$drop$0");
        if (i10 >= 0) {
            return qc(bArr, u.w(y0.t(bArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super F0>> C K2(long[] jArr, C destination, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$filterTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                destination.add(F0.b(r10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R K3(long[] jArr, R r10, p<? super F0, ? super R, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$foldRight$0");
        M.p(operation, "operation");
        for (int Ne2 = C14960A.Ne(jArr); Ne2 >= 0; Ne2--) {
            r10 = operation.invoke(F0.b(G0.r(jArr, Ne2)), r10);
        }
        return r10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, M extends Map<? super K, List<F0>>> M K4(long[] jArr, M destination, l<? super F0, ? extends K> keySelector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            K invoke = keySelector.invoke(F0.b(r10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(F0.b(r10));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> x0 K5(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxByOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 == 0) {
            return x0.b(r10);
        }
        R invoke = selector.invoke(x0.b(r10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                R invoke2 = selector.invoke(x0.b(r11));
                if (invoke.compareTo(invoke2) < 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @j(name = "maxWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final byte K6(@NotNull byte[] bArr, @NotNull Comparator<? super x0> comparator) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (comparator.compare(x0.b(r10), x0.b(r11)) < 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final x0 K7(@NotNull byte[] bArr, @NotNull Comparator<? super x0> comparator) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minWithOrNull$0");
        M.p(comparator, "comparator");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (comparator.compare(x0.b(r10), x0.b(r11)) > 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte K8(byte[] bArr, p<? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduce$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                r10 = operation.invoke(x0.b(r10), x0.b(y0.r(bArr, i10))).j0();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> K9(byte[] bArr, R r10, q<? super Integer, ? super R, ? super x0, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$runningFoldIndexed$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(y0.t(bArr) + 1);
        arrayList.add(r10);
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, x0.b(y0.r(bArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] Ka(@NotNull int[] iArr, @NotNull Collection<Integer> indices) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return C0.m(C14960A.yu(iArr, indices));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final double Kb(byte[] bArr, l<? super x0, Double> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumByDouble$0");
        M.p(selector, "selector");
        int t10 = y0.t(bArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < t10; i10++) {
            d10 += selector.invoke(x0.b(y0.r(bArr, i10))).doubleValue();
        }
        return d10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] Kc(byte[] bArr) {
        M.p(bArr, "<this>");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        return y0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte L0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$component3$0");
        return y0.r(bArr, 2);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> L1(@NotNull short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$drop$0");
        if (i10 >= 0) {
            return rc(sArr, u.w(M0.t(sArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super L0>> C L2(short[] sArr, C destination, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$filterTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                destination.add(L0.b(r10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R L3(byte[] bArr, R r10, p<? super x0, ? super R, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$foldRight$0");
        M.p(operation, "operation");
        for (int Ie2 = C14960A.Ie(bArr); Ie2 >= 0; Ie2--) {
            r10 = operation.invoke(x0.b(y0.r(bArr, Ie2)), r10);
        }
        return r10;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, M extends Map<? super K, List<L0>>> M L4(short[] sArr, M destination, l<? super L0, ? extends K> keySelector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            K invoke = keySelector.invoke(L0.b(r10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(L0.b(r10));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> F0 L5(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxByOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 == 0) {
            return F0.b(r10);
        }
        R invoke = selector.invoke(F0.b(r10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                R invoke2 = selector.invoke(F0.b(r11));
                if (invoke.compareTo(invoke2) < 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @j(name = "maxWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final int L6(@NotNull int[] iArr, @NotNull Comparator<? super B0> comparator) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (comparator.compare(B0.e(t10), B0.e(t11)) < 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final B0 L7(@NotNull int[] iArr, @NotNull Comparator<? super B0> comparator) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minWithOrNull$0");
        M.p(comparator, "comparator");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (comparator.compare(B0.e(t10), B0.e(t11)) > 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int L8(int[] iArr, p<? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduce$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                t10 = operation.invoke(B0.e(t10), B0.e(C0.t(iArr, i10))).q0();
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> L9(short[] sArr, R r10, q<? super Integer, ? super R, ? super L0, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$runningFoldIndexed$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(M0.t(sArr) + 1);
        arrayList.add(r10);
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, L0.b(M0.r(sArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] La(@NotNull short[] sArr, @NotNull Vf.l indices) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return M0.k(C14960A.Du(sArr, indices));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final double Lb(long[] jArr, l<? super F0, Double> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumByDouble$0");
        M.p(selector, "selector");
        int t10 = G0.t(jArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < t10; i10++) {
            d10 += selector.invoke(F0.b(G0.r(jArr, i10))).doubleValue();
        }
        return d10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] Lc(@NotNull x0[] x0VarArr) {
        M.p(x0VarArr, "<this>");
        int length = x0VarArr.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = x0VarArr[i10].j0();
        }
        return y0.k(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long M0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$component3$0");
        return G0.r(jArr, 2);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> M1(@NotNull int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$drop$0");
        if (i10 >= 0) {
            return sc(iArr, u.w(C0.v(iArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super B0>> C M2(int[] iArr, C destination, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$filterTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                destination.add(B0.e(t10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R M3(int[] iArr, R r10, p<? super B0, ? super R, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$foldRight$0");
        M.p(operation, "operation");
        for (int Me2 = C14960A.Me(iArr); Me2 >= 0; Me2--) {
            r10 = operation.invoke(B0.e(C0.t(iArr, Me2)), r10);
        }
        return r10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V, M extends Map<? super K, List<V>>> M M4(short[] sArr, M destination, l<? super L0, ? extends K> keySelector, l<? super L0, ? extends V> valueTransform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            K invoke = keySelector.invoke(L0.b(r10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(L0.b(r10)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> B0 M5(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxByOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        if (Me2 == 0) {
            return B0.e(t10);
        }
        R invoke = selector.invoke(B0.e(t10));
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                R invoke2 = selector.invoke(B0.e(t11));
                if (invoke.compareTo(invoke2) < 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @j(name = "maxWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final long M6(@NotNull long[] jArr, @NotNull Comparator<? super F0> comparator) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (comparator.compare(F0.b(r10), F0.b(r11)) < 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final L0 M7(@NotNull short[] sArr, @NotNull Comparator<? super L0> comparator) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minWithOrNull$0");
        M.p(comparator, "comparator");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (comparator.compare(L0.b(r10), L0.b(r11)) > 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long M8(long[] jArr, p<? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduce$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                r10 = operation.invoke(F0.b(r10), F0.b(G0.r(jArr, i10))).l0();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> M9(long[] jArr, R r10, q<? super Integer, ? super R, ? super F0, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$runningFoldIndexed$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(G0.t(jArr) + 1);
        arrayList.add(r10);
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, F0.b(G0.r(jArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] Ma(@NotNull long[] jArr, @NotNull Vf.l indices) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return G0.k(C14960A.zu(jArr, indices));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final double Mb(int[] iArr, l<? super B0, Double> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumByDouble$0");
        M.p(selector, "selector");
        int v10 = C0.v(iArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < v10; i10++) {
            d10 += selector.invoke(B0.e(C0.t(iArr, i10))).doubleValue();
        }
        return d10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] Mc(int[] iArr) {
        M.p(iArr, "<this>");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        return C0.m(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short N0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$component3$0");
        return M0.r(sArr, 2);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> N1(@NotNull long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$drop$0");
        if (i10 >= 0) {
            return tc(jArr, u.w(G0.t(jArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super x0>> C N2(byte[] bArr, C destination, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$filterTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                destination.add(x0.b(r10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R N3(short[] sArr, R r10, p<? super L0, ? super R, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$foldRight$0");
        M.p(operation, "operation");
        for (int Pe2 = C14960A.Pe(sArr); Pe2 >= 0; Pe2--) {
            r10 = operation.invoke(L0.b(M0.r(sArr, Pe2)), r10);
        }
        return r10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V, M extends Map<? super K, List<V>>> M N4(byte[] bArr, M destination, l<? super x0, ? extends K> keySelector, l<? super x0, ? extends V> valueTransform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$groupByTo$0");
        M.p(destination, "destination");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            K invoke = keySelector.invoke(x0.b(r10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(x0.b(r10)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> L0 N5(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxByOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 == 0) {
            return L0.b(r10);
        }
        R invoke = selector.invoke(L0.b(r10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                R invoke2 = selector.invoke(L0.b(r11));
                if (invoke.compareTo(invoke2) < 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @j(name = "maxWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final short N6(@NotNull short[] sArr, @NotNull Comparator<? super L0> comparator) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxWith$0");
        M.p(comparator, "comparator");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (comparator.compare(L0.b(r10), L0.b(r11)) < 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final F0 N7(@NotNull long[] jArr, @NotNull Comparator<? super F0> comparator) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minWithOrNull$0");
        M.p(comparator, "comparator");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (comparator.compare(F0.b(r10), F0.b(r11)) > 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short N8(short[] sArr, p<? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduce$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                r10 = operation.invoke(L0.b(r10), L0.b(M0.r(sArr, i10))).j0();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> N9(int[] iArr, R r10, q<? super Integer, ? super R, ? super B0, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$runningFoldIndexed$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(C0.v(iArr) + 1);
        arrayList.add(r10);
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, B0.e(C0.t(iArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] Na(@NotNull byte[] bArr, @NotNull Vf.l indices) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return y0.k(C14960A.pu(bArr, indices));
    }

    @InterfaceC14443y
    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final double Nb(short[] sArr, l<? super L0, Double> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumByDouble$0");
        M.p(selector, "selector");
        int t10 = M0.t(sArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < t10; i10++) {
            d10 += selector.invoke(L0.b(M0.r(sArr, i10))).doubleValue();
        }
        return d10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] Nc(@NotNull B0[] b0Arr) {
        M.p(b0Arr, "<this>");
        int length = b0Arr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = b0Arr[i10].q0();
        }
        return C0.m(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int O0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$component4$0");
        return C0.t(iArr, 3);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> O1(@NotNull byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$dropLast$0");
        if (i10 >= 0) {
            return mc(bArr, u.w(y0.t(bArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final x0 O2(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$find$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                return x0.b(r10);
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R O3(byte[] bArr, R r10, q<? super Integer, ? super x0, ? super R, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$foldRightIndexed$0");
        M.p(operation, "operation");
        for (int Ie2 = C14960A.Ie(bArr); Ie2 >= 0; Ie2--) {
            r10 = operation.n(Integer.valueOf(Ie2), x0.b(y0.r(bArr, Ie2)), r10);
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int O4(long[] jArr, long j10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$indexOf$0");
        return C14960A.Zf(jArr, j10);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "maxByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> byte O5(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 == 0) {
            return r10;
        }
        R invoke = selector.invoke(x0.b(r10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                R invoke2 = selector.invoke(x0.b(r11));
                if (invoke.compareTo(invoke2) < 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> x0 O6(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minByOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 == 0) {
            return x0.b(r10);
        }
        R invoke = selector.invoke(x0.b(r10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                R invoke2 = selector.invoke(x0.b(r11));
                if (invoke.compareTo(invoke2) > 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @j(name = "minWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final byte O7(@NotNull byte[] bArr, @NotNull Comparator<? super x0> comparator) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (comparator.compare(x0.b(r10), x0.b(r11)) > 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int O8(int[] iArr, q<? super Integer, ? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceIndexed$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                t10 = operation.n(Integer.valueOf(i10), B0.e(t10), B0.e(C0.t(iArr, i10))).q0();
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<x0> O9(byte[] bArr, p<? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$runningReduce$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return H.J();
        }
        byte r10 = y0.r(bArr, 0);
        ArrayList arrayList = new ArrayList(y0.t(bArr));
        arrayList.add(x0.b(r10));
        int t10 = y0.t(bArr);
        for (int i10 = 1; i10 < t10; i10++) {
            r10 = operation.invoke(x0.b(r10), x0.b(y0.r(bArr, i10))).j0();
            arrayList.add(x0.b(r10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] Oa(@NotNull long[] jArr, @NotNull Collection<Integer> indices) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return G0.k(C14960A.Au(jArr, indices));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Ob(byte[] bArr, l<? super x0, Double> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = y0.t(bArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < t10; i10++) {
            d10 += selector.invoke(x0.b(y0.r(bArr, i10))).doubleValue();
        }
        return d10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] Oc(long[] jArr) {
        M.p(jArr, "<this>");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        return G0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte P0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$component4$0");
        return y0.r(bArr, 3);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> P1(@NotNull short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$dropLast$0");
        if (i10 >= 0) {
            return nc(sArr, u.w(M0.t(sArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final F0 P2(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$find$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                return F0.b(r10);
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R P3(short[] sArr, R r10, q<? super Integer, ? super L0, ? super R, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$foldRightIndexed$0");
        M.p(operation, "operation");
        for (int Pe2 = C14960A.Pe(sArr); Pe2 >= 0; Pe2--) {
            r10 = operation.n(Integer.valueOf(Pe2), L0.b(M0.r(sArr, Pe2)), r10);
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int P4(short[] sArr, short s10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$indexOf$0");
        return C14960A.bg(sArr, s10);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "maxByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> int P5(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        if (Me2 == 0) {
            return t10;
        }
        R invoke = selector.invoke(B0.e(t10));
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                R invoke2 = selector.invoke(B0.e(t11));
                if (invoke.compareTo(invoke2) < 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> F0 P6(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minByOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 == 0) {
            return F0.b(r10);
        }
        R invoke = selector.invoke(F0.b(r10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                R invoke2 = selector.invoke(F0.b(r11));
                if (invoke.compareTo(invoke2) > 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @j(name = "minWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final int P7(@NotNull int[] iArr, @NotNull Comparator<? super B0> comparator) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (comparator.compare(B0.e(t10), B0.e(t11)) > 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte P8(byte[] bArr, q<? super Integer, ? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceIndexed$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                r10 = operation.n(Integer.valueOf(i10), x0.b(r10), x0.b(y0.r(bArr, i10))).j0();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<B0> P9(int[] iArr, p<? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$runningReduce$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return H.J();
        }
        int t10 = C0.t(iArr, 0);
        ArrayList arrayList = new ArrayList(C0.v(iArr));
        arrayList.add(B0.e(t10));
        int v10 = C0.v(iArr);
        for (int i10 = 1; i10 < v10; i10++) {
            t10 = operation.invoke(B0.e(t10), B0.e(C0.t(iArr, i10))).q0();
            arrayList.add(B0.e(t10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] Pa(@NotNull short[] sArr, @NotNull Collection<Integer> indices) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return M0.k(C14960A.Eu(sArr, indices));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Pb(int[] iArr, l<? super B0, Double> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int v10 = C0.v(iArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < v10; i10++) {
            d10 += selector.invoke(B0.e(C0.t(iArr, i10))).doubleValue();
        }
        return d10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] Pc(@NotNull F0[] f0Arr) {
        M.p(f0Arr, "<this>");
        int length = f0Arr.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = f0Arr[i10].l0();
        }
        return G0.k(jArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long Q0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$component4$0");
        return G0.r(jArr, 3);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> Q1(@NotNull int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$dropLast$0");
        if (i10 >= 0) {
            return oc(iArr, u.w(C0.v(iArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final B0 Q2(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$find$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                return B0.e(t10);
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R Q3(long[] jArr, R r10, q<? super Integer, ? super F0, ? super R, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$foldRightIndexed$0");
        M.p(operation, "operation");
        for (int Ne2 = C14960A.Ne(jArr); Ne2 >= 0; Ne2--) {
            r10 = operation.n(Integer.valueOf(Ne2), F0.b(G0.r(jArr, Ne2)), r10);
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int Q4(byte[] bArr, byte b10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$indexOf$0");
        return C14960A.Uf(bArr, b10);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "maxByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> long Q5(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 == 0) {
            return r10;
        }
        R invoke = selector.invoke(F0.b(r10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                R invoke2 = selector.invoke(F0.b(r11));
                if (invoke.compareTo(invoke2) < 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> B0 Q6(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minByOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        if (Me2 == 0) {
            return B0.e(t10);
        }
        R invoke = selector.invoke(B0.e(t10));
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                R invoke2 = selector.invoke(B0.e(t11));
                if (invoke.compareTo(invoke2) > 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @j(name = "minWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final long Q7(@NotNull long[] jArr, @NotNull Comparator<? super F0> comparator) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                if (comparator.compare(F0.b(r10), F0.b(r11)) > 0) {
                    r10 = r11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short Q8(short[] sArr, q<? super Integer, ? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceIndexed$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                r10 = operation.n(Integer.valueOf(i10), L0.b(r10), L0.b(M0.r(sArr, i10))).j0();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<F0> Q9(long[] jArr, p<? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$runningReduce$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return H.J();
        }
        long r10 = G0.r(jArr, 0);
        ArrayList arrayList = new ArrayList(G0.t(jArr));
        arrayList.add(F0.b(r10));
        int t10 = G0.t(jArr);
        for (int i10 = 1; i10 < t10; i10++) {
            r10 = operation.invoke(F0.b(r10), F0.b(G0.r(jArr, i10))).l0();
            arrayList.add(F0.b(r10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] Qa(@NotNull int[] iArr, @NotNull Vf.l indices) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return C0.m(C14960A.xu(iArr, indices));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Qb(long[] jArr, l<? super F0, Double> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = G0.t(jArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < t10; i10++) {
            d10 += selector.invoke(F0.b(G0.r(jArr, i10))).doubleValue();
        }
        return d10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] Qc(@NotNull L0[] l0Arr) {
        M.p(l0Arr, "<this>");
        int length = l0Arr.length;
        short[] sArr = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr[i10] = l0Arr[i10].j0();
        }
        return M0.k(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short R0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$component4$0");
        return M0.r(sArr, 3);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> R1(@NotNull long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$dropLast$0");
        if (i10 >= 0) {
            return pc(jArr, u.w(G0.t(jArr) - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final L0 R2(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$find$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                return L0.b(r10);
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> R R3(int[] iArr, R r10, q<? super Integer, ? super B0, ? super R, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$foldRightIndexed$0");
        M.p(operation, "operation");
        for (int Me2 = C14960A.Me(iArr); Me2 >= 0; Me2--) {
            r10 = operation.n(Integer.valueOf(Me2), B0.e(C0.t(iArr, Me2)), r10);
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int R4(int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$indexOf$0");
        return C14960A.Yf(iArr, i10);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "maxByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> short R5(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxBy$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 == 0) {
            return r10;
        }
        R invoke = selector.invoke(L0.b(r10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                R invoke2 = selector.invoke(L0.b(r11));
                if (invoke.compareTo(invoke2) < 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> L0 R6(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minByOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 == 0) {
            return L0.b(r10);
        }
        R invoke = selector.invoke(L0.b(r10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                R invoke2 = selector.invoke(L0.b(r11));
                if (invoke.compareTo(invoke2) > 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @j(name = "minWithOrThrow-U")
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.7")
    public static final short R7(@NotNull short[] sArr, @NotNull Comparator<? super L0> comparator) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minWith$0");
        M.p(comparator, "comparator");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                if (comparator.compare(L0.b(r10), L0.b(r11)) > 0) {
                    r10 = r11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long R8(long[] jArr, q<? super Integer, ? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceIndexed$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                r10 = operation.n(Integer.valueOf(i10), F0.b(r10), F0.b(G0.r(jArr, i10))).l0();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<L0> R9(short[] sArr, p<? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$runningReduce$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return H.J();
        }
        short r10 = M0.r(sArr, 0);
        ArrayList arrayList = new ArrayList(M0.t(sArr));
        arrayList.add(L0.b(r10));
        int t10 = M0.t(sArr);
        for (int i10 = 1; i10 < t10; i10++) {
            r10 = operation.invoke(L0.b(r10), L0.b(M0.r(sArr, i10))).j0();
            arrayList.add(L0.b(r10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] Ra(@NotNull byte[] bArr, @NotNull Collection<Integer> indices) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sliceArray$0");
        M.p(indices, "indices");
        return y0.k(C14960A.qu(bArr, indices));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Rb(short[] sArr, l<? super L0, Double> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = M0.t(sArr);
        double d10 = 0.0d;
        for (int i10 = 0; i10 < t10; i10++) {
            d10 += selector.invoke(L0.b(M0.r(sArr, i10))).doubleValue();
        }
        return d10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] Rc(short[] sArr) {
        M.p(sArr, "<this>");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        return M0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int S0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$component5$0");
        return C0.t(iArr, 4);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> S1(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$dropLastWhile$0");
        M.p(predicate, "predicate");
        for (int Ie2 = C14960A.Ie(bArr); -1 < Ie2; Ie2--) {
            if (!predicate.invoke(x0.b(y0.r(bArr, Ie2))).booleanValue()) {
                return mc(bArr, Ie2 + 1);
            }
        }
        return H.J();
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final x0 S2(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$findLast$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr) - 1;
        if (t10 >= 0) {
            while (true) {
                int i10 = t10 - 1;
                byte r10 = y0.r(bArr, t10);
                if (predicate.invoke(x0.b(r10)).booleanValue()) {
                    return x0.b(r10);
                }
                if (i10 < 0) {
                    break;
                }
                t10 = i10;
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void S3(byte[] bArr, l<? super x0, P0> action) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$forEach$0");
        M.p(action, "action");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            action.invoke(x0.b(y0.r(bArr, i10)));
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int S4(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$indexOfFirst$0");
        M.p(predicate, "predicate");
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(x0.b(x0.i(bArr[i10]))).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double S5(byte[] bArr, l<? super x0, Double> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(x0.b(y0.r(bArr, 0))).doubleValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(x0.b(y0.r(bArr, i10))).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "minByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> byte S6(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 == 0) {
            return r10;
        }
        R invoke = selector.invoke(x0.b(r10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                R invoke2 = selector.invoke(x0.b(r11));
                if (invoke.compareTo(invoke2) > 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean S7(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$none$0");
        return C0.z(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final B0 S8(int[] iArr, q<? super Integer, ? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceIndexedOrNull$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                t10 = operation.n(Integer.valueOf(i10), B0.e(t10), B0.e(C0.t(iArr, i10))).q0();
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<B0> S9(int[] iArr, q<? super Integer, ? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$runningReduceIndexed$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return H.J();
        }
        int t10 = C0.t(iArr, 0);
        ArrayList arrayList = new ArrayList(C0.v(iArr));
        arrayList.add(B0.e(t10));
        int v10 = C0.v(iArr);
        for (int i10 = 1; i10 < v10; i10++) {
            t10 = operation.n(Integer.valueOf(i10), B0.e(t10), B0.e(C0.t(iArr, i10))).q0();
            arrayList.add(B0.e(t10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void Sa(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sort$0");
        if (C0.v(iArr) > 1) {
            pf.F0.l(iArr, 0, C0.v(iArr));
        }
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int Sb(byte[] bArr, l<? super x0, Integer> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = y0.t(bArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            i10 += selector.invoke(x0.b(y0.r(bArr, i11))).intValue();
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final Iterable<C14968d0<B0>> Sc(@NotNull final int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$withIndex$0");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator Yc2;
                Yc2 = g.Yc(iArr);
                return Yc2;
            }
        });
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte T0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$component5$0");
        return y0.r(bArr, 4);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> T1(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$dropLastWhile$0");
        M.p(predicate, "predicate");
        for (int Ne2 = C14960A.Ne(jArr); -1 < Ne2; Ne2--) {
            if (!predicate.invoke(F0.b(G0.r(jArr, Ne2))).booleanValue()) {
                return pc(jArr, Ne2 + 1);
            }
        }
        return H.J();
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final F0 T2(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$findLast$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr) - 1;
        if (t10 >= 0) {
            while (true) {
                int i10 = t10 - 1;
                long r10 = G0.r(jArr, t10);
                if (predicate.invoke(F0.b(r10)).booleanValue()) {
                    return F0.b(r10);
                }
                if (i10 < 0) {
                    break;
                }
                t10 = i10;
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void T3(long[] jArr, l<? super F0, P0> action) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$forEach$0");
        M.p(action, "action");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            action.invoke(F0.b(G0.r(jArr, i10)));
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int T4(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$indexOfFirst$0");
        M.p(predicate, "predicate");
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(F0.b(F0.i(jArr[i10]))).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float T5(byte[] bArr, l<? super x0, Float> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(x0.b(y0.r(bArr, 0))).floatValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(x0.b(y0.r(bArr, i10))).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "minByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> int T6(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        if (Me2 == 0) {
            return t10;
        }
        R invoke = selector.invoke(B0.e(t10));
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                R invoke2 = selector.invoke(B0.e(t11));
                if (invoke.compareTo(invoke2) > 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean T7(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$none$0");
        return y0.w(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final x0 T8(byte[] bArr, q<? super Integer, ? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceIndexedOrNull$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                r10 = operation.n(Integer.valueOf(i10), x0.b(r10), x0.b(y0.r(bArr, i10))).j0();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<x0> T9(byte[] bArr, q<? super Integer, ? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$runningReduceIndexed$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return H.J();
        }
        byte r10 = y0.r(bArr, 0);
        ArrayList arrayList = new ArrayList(y0.t(bArr));
        arrayList.add(x0.b(r10));
        int t10 = y0.t(bArr);
        for (int i10 = 1; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), x0.b(r10), x0.b(y0.r(bArr, i10))).j0();
            arrayList.add(x0.b(r10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void Ta(@NotNull long[] jArr, int i10, int i11) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sort$0");
        AbstractC14967d.f103841b.d(i10, i11, G0.t(jArr));
        if (i10 < i11 - 1) {
            pf.F0.i(jArr, i10, i11);
        }
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int Tb(int[] iArr, l<? super B0, Integer> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int v10 = C0.v(iArr);
        int i10 = 0;
        for (int i11 = 0; i11 < v10; i11++) {
            i10 += selector.invoke(B0.e(C0.t(iArr, i11))).intValue();
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final Iterable<C14968d0<x0>> Tc(@NotNull final byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$withIndex$0");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator Wc2;
                Wc2 = g.Wc(bArr);
                return Wc2;
            }
        });
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long U0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$component5$0");
        return G0.r(jArr, 4);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> U1(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$dropLastWhile$0");
        M.p(predicate, "predicate");
        for (int Me2 = C14960A.Me(iArr); -1 < Me2; Me2--) {
            if (!predicate.invoke(B0.e(C0.t(iArr, Me2))).booleanValue()) {
                return oc(iArr, Me2 + 1);
            }
        }
        return H.J();
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final B0 U2(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$findLast$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr) - 1;
        if (v10 >= 0) {
            while (true) {
                int i10 = v10 - 1;
                int t10 = C0.t(iArr, v10);
                if (predicate.invoke(B0.e(t10)).booleanValue()) {
                    return B0.e(t10);
                }
                if (i10 < 0) {
                    break;
                }
                v10 = i10;
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void U3(int[] iArr, l<? super B0, P0> action) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$forEach$0");
        M.p(action, "action");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            action.invoke(B0.e(C0.t(iArr, i10)));
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int U4(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$indexOfFirst$0");
        M.p(predicate, "predicate");
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(B0.e(B0.o(iArr[i10]))).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R U5(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(x0.b(y0.r(bArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "minByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> long U6(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 == 0) {
            return r10;
        }
        R invoke = selector.invoke(F0.b(r10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long r11 = G0.r(jArr, i10);
                R invoke2 = selector.invoke(F0.b(r11));
                if (invoke.compareTo(invoke2) > 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean U7(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$none$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (predicate.invoke(x0.b(y0.r(bArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final L0 U8(short[] sArr, q<? super Integer, ? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceIndexedOrNull$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                r10 = operation.n(Integer.valueOf(i10), L0.b(r10), L0.b(M0.r(sArr, i10))).j0();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<L0> U9(short[] sArr, q<? super Integer, ? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$runningReduceIndexed$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return H.J();
        }
        short r10 = M0.r(sArr, 0);
        ArrayList arrayList = new ArrayList(M0.t(sArr));
        arrayList.add(L0.b(r10));
        int t10 = M0.t(sArr);
        for (int i10 = 1; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), L0.b(r10), L0.b(M0.r(sArr, i10))).j0();
            arrayList.add(L0.b(r10));
        }
        return arrayList;
    }

    public static void Ua(long[] jArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = G0.t(jArr);
        }
        Ta(jArr, i10, i11);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int Ub(long[] jArr, l<? super F0, Integer> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = G0.t(jArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            i10 += selector.invoke(F0.b(G0.r(jArr, i11))).intValue();
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final Iterable<C14968d0<F0>> Uc(@NotNull final long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$withIndex$0");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator Xc2;
                Xc2 = g.Xc(jArr);
                return Xc2;
            }
        });
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short V0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$component5$0");
        return M0.r(sArr, 4);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> V1(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$dropLastWhile$0");
        M.p(predicate, "predicate");
        for (int Pe2 = C14960A.Pe(sArr); -1 < Pe2; Pe2--) {
            if (!predicate.invoke(L0.b(M0.r(sArr, Pe2))).booleanValue()) {
                return nc(sArr, Pe2 + 1);
            }
        }
        return H.J();
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final L0 V2(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$findLast$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr) - 1;
        if (t10 >= 0) {
            while (true) {
                int i10 = t10 - 1;
                short r10 = M0.r(sArr, t10);
                if (predicate.invoke(L0.b(r10)).booleanValue()) {
                    return L0.b(r10);
                }
                if (i10 < 0) {
                    break;
                }
                t10 = i10;
            }
        }
        return null;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void V3(short[] sArr, l<? super L0, P0> action) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$forEach$0");
        M.p(action, "action");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            action.invoke(L0.b(M0.r(sArr, i10)));
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int V4(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$indexOfFirst$0");
        M.p(predicate, "predicate");
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(L0.b(L0.i(sArr[i10]))).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double V5(long[] jArr, l<? super F0, Double> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(F0.b(G0.r(jArr, 0))).doubleValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(F0.b(G0.r(jArr, i10))).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "minByOrThrow-U")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> short V6(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minBy$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 == 0) {
            return r10;
        }
        R invoke = selector.invoke(L0.b(r10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short r11 = M0.r(sArr, i10);
                R invoke2 = selector.invoke(L0.b(r11));
                if (invoke.compareTo(invoke2) > 0) {
                    r10 = r11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean V7(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$none$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (predicate.invoke(F0.b(G0.r(jArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final F0 V8(long[] jArr, q<? super Integer, ? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceIndexedOrNull$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                r10 = operation.n(Integer.valueOf(i10), F0.b(r10), F0.b(G0.r(jArr, i10))).l0();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final List<F0> V9(long[] jArr, q<? super Integer, ? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$runningReduceIndexed$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return H.J();
        }
        long r10 = G0.r(jArr, 0);
        ArrayList arrayList = new ArrayList(G0.t(jArr));
        arrayList.add(F0.b(r10));
        int t10 = G0.t(jArr);
        for (int i10 = 1; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), F0.b(r10), F0.b(G0.r(jArr, i10))).l0();
            arrayList.add(F0.b(r10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void Va(@NotNull byte[] bArr, int i10, int i11) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sort$0");
        AbstractC14967d.f103841b.d(i10, i11, y0.t(bArr));
        if (i10 < i11 - 1) {
            pf.F0.j(bArr, i10, i11);
        }
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int Vb(short[] sArr, l<? super L0, Integer> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = M0.t(sArr);
        int i10 = 0;
        for (int i11 = 0; i11 < t10; i11++) {
            i10 += selector.invoke(L0.b(M0.r(sArr, i11))).intValue();
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final Iterable<C14968d0<L0>> Vc(@NotNull final short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$withIndex$0");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator Zc2;
                Zc2 = g.Zc(sArr);
                return Zc2;
            }
        });
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static boolean W0(@Nullable short[] sArr, @Nullable short[] sArr2) {
        if (sArr == null) {
            sArr = null;
        }
        if (sArr2 == null) {
            sArr2 = null;
        }
        return Arrays.equals(sArr, sArr2);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> W1(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$dropWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (z10) {
                arrayList.add(x0.b(r10));
            } else if (!predicate.invoke(x0.b(r10)).booleanValue()) {
                arrayList.add(x0.b(r10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int W2(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$first$0");
        return B0.o(C14960A.fc(iArr));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void W3(byte[] bArr, p<? super Integer, ? super x0, P0> action) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$forEachIndexed$0");
        M.p(action, "action");
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            action.invoke(Integer.valueOf(i11), x0.b(y0.r(bArr, i10)));
            i10++;
            i11++;
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int W4(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$indexOfLast$0");
        M.p(predicate, "predicate");
        int length = bArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i10 = length - 1;
            if (predicate.invoke(x0.b(x0.i(bArr[length]))).booleanValue()) {
                return length;
            }
            if (i10 < 0) {
                return -1;
            }
            length = i10;
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float W5(long[] jArr, l<? super F0, Float> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(F0.b(G0.r(jArr, 0))).floatValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(F0.b(G0.r(jArr, i10))).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double W6(byte[] bArr, l<? super x0, Double> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(x0.b(y0.r(bArr, 0))).doubleValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(x0.b(y0.r(bArr, i10))).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean W7(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$none$0");
        return G0.w(jArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final x0 W8(byte[] bArr, p<? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceOrNull$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                r10 = operation.invoke(x0.b(r10), x0.b(y0.r(bArr, i10))).j0();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> W9(long[] jArr, R r10, p<? super R, ? super F0, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$scan$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(G0.t(jArr) + 1);
        arrayList.add(r10);
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, F0.b(G0.r(jArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    public static void Wa(byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = y0.t(bArr);
        }
        Va(bArr, i10, i11);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long Wb(byte[] bArr, l<? super x0, Long> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = y0.t(bArr);
        long j10 = 0;
        for (int i10 = 0; i10 < t10; i10++) {
            j10 += selector.invoke(x0.b(y0.r(bArr, i10))).longValue();
        }
        return j10;
    }

    public static final Iterator Wc(byte[] bArr) {
        return y0.x(bArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static boolean X0(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            iArr = null;
        }
        if (iArr2 == null) {
            iArr2 = null;
        }
        return Arrays.equals(iArr, iArr2);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> X1(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$dropWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (z10) {
                arrayList.add(F0.b(r10));
            } else if (!predicate.invoke(F0.b(r10)).booleanValue()) {
                arrayList.add(F0.b(r10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte X2(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$first$0");
        return x0.i(C14960A.Xb(bArr));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void X3(int[] iArr, p<? super Integer, ? super B0, P0> action) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$forEachIndexed$0");
        M.p(action, "action");
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            action.invoke(Integer.valueOf(i11), B0.e(C0.t(iArr, i10)));
            i10++;
            i11++;
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int X4(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$indexOfLast$0");
        M.p(predicate, "predicate");
        int length = jArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i10 = length - 1;
            if (predicate.invoke(F0.b(F0.i(jArr[length]))).booleanValue()) {
                return length;
            }
            if (i10 < 0) {
                return -1;
            }
            length = i10;
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R X5(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(F0.b(G0.r(jArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float X6(byte[] bArr, l<? super x0, Float> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(x0.b(y0.r(bArr, 0))).floatValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(x0.b(y0.r(bArr, i10))).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean X7(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$none$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            if (predicate.invoke(B0.e(C0.t(iArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final B0 X8(int[] iArr, p<? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceOrNull$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                t10 = operation.invoke(B0.e(t10), B0.e(C0.t(iArr, i10))).q0();
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> X9(byte[] bArr, R r10, p<? super R, ? super x0, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$scan$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(y0.t(bArr) + 1);
        arrayList.add(r10);
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, x0.b(y0.r(bArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void Xa(@NotNull short[] sArr, int i10, int i11) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sort$0");
        AbstractC14967d.f103841b.d(i10, i11, M0.t(sArr));
        if (i10 < i11 - 1) {
            pf.F0.k(sArr, i10, i11);
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long Xb(int[] iArr, l<? super B0, Long> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int v10 = C0.v(iArr);
        long j10 = 0;
        for (int i10 = 0; i10 < v10; i10++) {
            j10 += selector.invoke(B0.e(C0.t(iArr, i10))).longValue();
        }
        return j10;
    }

    public static final Iterator Xc(long[] jArr) {
        return G0.x(jArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static boolean Y0(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            bArr = null;
        }
        if (bArr2 == null) {
            bArr2 = null;
        }
        return Arrays.equals(bArr, bArr2);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> Y1(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$dropWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        boolean z10 = false;
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (z10) {
                arrayList.add(B0.e(t10));
            } else if (!predicate.invoke(B0.e(t10)).booleanValue()) {
                arrayList.add(B0.e(t10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte Y2(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$first$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                return r10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void Y3(long[] jArr, p<? super Integer, ? super F0, P0> action) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$forEachIndexed$0");
        M.p(action, "action");
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            action.invoke(Integer.valueOf(i11), F0.b(G0.r(jArr, i10)));
            i10++;
            i11++;
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int Y4(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$indexOfLast$0");
        M.p(predicate, "predicate");
        int length = iArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i10 = length - 1;
            if (predicate.invoke(B0.e(B0.o(iArr[length]))).booleanValue()) {
                return length;
            }
            if (i10 < 0) {
                return -1;
            }
            length = i10;
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double Y5(int[] iArr, l<? super B0, Double> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(B0.e(C0.t(iArr, 0))).doubleValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(B0.e(C0.t(iArr, i10))).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Y6(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(x0.b(y0.r(bArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean Y7(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$none$0");
        return M0.w(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final F0 Y8(long[] jArr, p<? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceOrNull$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return null;
        }
        long r10 = G0.r(jArr, 0);
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                r10 = operation.invoke(F0.b(r10), F0.b(G0.r(jArr, i10))).l0();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return F0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Y9(int[] iArr, R r10, p<? super R, ? super B0, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$scan$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(C0.v(iArr) + 1);
        arrayList.add(r10);
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            r10 = operation.invoke(r10, B0.e(C0.t(iArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    public static void Ya(short[] sArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = M0.t(sArr);
        }
        Xa(sArr, i10, i11);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long Yb(long[] jArr, l<? super F0, Long> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = G0.t(jArr);
        long j10 = 0;
        for (int i10 = 0; i10 < t10; i10++) {
            j10 += selector.invoke(F0.b(G0.r(jArr, i10))).longValue();
        }
        return j10;
    }

    public static final Iterator Yc(int[] iArr) {
        return C0.A(iArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static boolean Z0(@Nullable long[] jArr, @Nullable long[] jArr2) {
        if (jArr == null) {
            jArr = null;
        }
        if (jArr2 == null) {
            jArr2 = null;
        }
        return Arrays.equals(jArr, jArr2);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> Z1(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$dropWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (z10) {
                arrayList.add(L0.b(r10));
            } else if (!predicate.invoke(L0.b(r10)).booleanValue()) {
                arrayList.add(L0.b(r10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long Z2(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$first$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                return r10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void Z3(short[] sArr, p<? super Integer, ? super L0, P0> action) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$forEachIndexed$0");
        M.p(action, "action");
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            action.invoke(Integer.valueOf(i11), L0.b(M0.r(sArr, i10)));
            i10++;
            i11++;
        }
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int Z4(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$indexOfLast$0");
        M.p(predicate, "predicate");
        int length = sArr.length - 1;
        if (length < 0) {
            return -1;
        }
        while (true) {
            int i10 = length - 1;
            if (predicate.invoke(L0.b(L0.i(sArr[length]))).booleanValue()) {
                return length;
            }
            if (i10 < 0) {
                return -1;
            }
            length = i10;
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float Z5(int[] iArr, l<? super B0, Float> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(B0.e(C0.t(iArr, 0))).floatValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(B0.e(C0.t(iArr, i10))).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double Z6(long[] jArr, l<? super F0, Double> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(F0.b(G0.r(jArr, 0))).doubleValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(F0.b(G0.r(jArr, i10))).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean Z7(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$none$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (predicate.invoke(L0.b(M0.r(sArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final L0 Z8(short[] sArr, p<? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceOrNull$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return null;
        }
        short r10 = M0.r(sArr, 0);
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                r10 = operation.invoke(L0.b(r10), L0.b(M0.r(sArr, i10))).j0();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return L0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Z9(short[] sArr, R r10, p<? super R, ? super L0, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$scan$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(M0.t(sArr) + 1);
        arrayList.add(r10);
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.invoke(r10, L0.b(M0.r(sArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void Za(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sort$0");
        if (y0.t(bArr) > 1) {
            pf.F0.j(bArr, 0, y0.t(bArr));
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long Zb(short[] sArr, l<? super L0, Long> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int t10 = M0.t(sArr);
        long j10 = 0;
        for (int i10 = 0; i10 < t10; i10++) {
            j10 += selector.invoke(L0.b(M0.r(sArr, i10))).longValue();
        }
        return j10;
    }

    public static final Iterator Zc(short[] sArr) {
        return M0.x(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean a0(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$all$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (!predicate.invoke(x0.b(y0.r(bArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int a1(@Nullable byte[] bArr) {
        if (bArr == null) {
            bArr = null;
        }
        return Arrays.hashCode(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short a2(short[] sArr, int i10, l<? super Integer, L0> defaultValue) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$elementAtOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= M0.t(sArr)) ? defaultValue.invoke(Integer.valueOf(i10)).j0() : M0.r(sArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long a3(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$first$0");
        return F0.i(C14960A.hc(jArr));
    }

    @NotNull
    public static final Vf.l a4(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$indices$0");
        return C14960A.De(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int a5(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$last$0");
        return B0.o(C14960A.Oh(iArr));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R a6(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(B0.e(C0.t(iArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float a7(long[] jArr, l<? super F0, Float> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(F0.b(G0.r(jArr, 0))).floatValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(F0.b(G0.r(jArr, i10))).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final byte[] a8(byte[] bArr, l<? super x0, P0> action) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$onEach$0");
        M.p(action, "action");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            action.invoke(x0.b(y0.r(bArr, i10)));
        }
        return bArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte a9(byte[] bArr, p<? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceRight$0");
        M.p(operation, "operation");
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte r10 = y0.r(bArr, Ie2);
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            r10 = operation.invoke(x0.b(y0.r(bArr, i10)), x0.b(r10)).j0();
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> aa(byte[] bArr, R r10, q<? super Integer, ? super R, ? super x0, ? extends R> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$scanIndexed$0");
        M.p(operation, "operation");
        if (y0.w(bArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(y0.t(bArr) + 1);
        arrayList.add(r10);
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, x0.b(y0.r(bArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void ab(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sort$0");
        if (G0.t(jArr) > 1) {
            pf.F0.i(jArr, 0, G0.t(jArr));
        }
    }

    @j(name = "sumOfUByte")
    @InterfaceC14422l0(version = "1.5")
    public static final int ac(@NotNull x0[] x0VarArr) {
        M.p(x0VarArr, "<this>");
        int i10 = 0;
        for (x0 x0Var : x0VarArr) {
            i10 = B0.o(i10 + B0.o(x0Var.j0() & 255));
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> ad(int[] iArr, Iterable<? extends R> other, p<? super B0, ? super R, ? extends V> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int v10 = C0.v(iArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), v10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= v10) {
                break;
            }
            arrayList.add(transform.invoke(B0.e(C0.t(iArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean b0(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$all$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (!predicate.invoke(F0.b(G0.r(jArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int b1(@Nullable int[] iArr) {
        if (iArr == null) {
            iArr = null;
        }
        return Arrays.hashCode(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int b2(int[] iArr, int i10, l<? super Integer, B0> defaultValue) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$elementAtOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= C0.v(iArr)) ? defaultValue.invoke(Integer.valueOf(i10)).q0() : C0.t(iArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int b3(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$first$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                return t10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void b4(int[] iArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte b5(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$last$0");
        return x0.i(C14960A.Gh(bArr));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double b6(short[] sArr, l<? super L0, Double> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(L0.b(M0.r(sArr, 0))).doubleValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(L0.b(M0.r(sArr, i10))).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R b7(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(F0.b(G0.r(jArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final long[] b8(long[] jArr, l<? super F0, P0> action) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$onEach$0");
        M.p(action, "action");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            action.invoke(F0.b(G0.r(jArr, i10)));
        }
        return jArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int b9(int[] iArr, p<? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceRight$0");
        M.p(operation, "operation");
        int Me2 = C14960A.Me(iArr);
        if (Me2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int t10 = C0.t(iArr, Me2);
        for (int i10 = Me2 - 1; i10 >= 0; i10--) {
            t10 = operation.invoke(B0.e(C0.t(iArr, i10)), B0.e(t10)).q0();
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> ba(short[] sArr, R r10, q<? super Integer, ? super R, ? super L0, ? extends R> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$scanIndexed$0");
        M.p(operation, "operation");
        if (M0.w(sArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(M0.t(sArr) + 1);
        arrayList.add(r10);
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, L0.b(M0.r(sArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void bb(@NotNull int[] iArr, int i10, int i11) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sort$0");
        AbstractC14967d.f103841b.d(i10, i11, C0.v(iArr));
        if (i10 < i11 - 1) {
            pf.F0.l(iArr, i10, i11);
        }
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int bc(byte[] bArr, l<? super x0, B0> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int o10 = B0.o(0);
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            o10 = B0.o(o10 + selector.invoke(x0.b(y0.r(bArr, i10))).q0());
        }
        return o10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> bd(long[] jArr, R[] other, p<? super F0, ? super R, ? extends V> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int min = Math.min(G0.t(jArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(F0.b(G0.r(jArr, i10)), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean c0(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$all$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            if (!predicate.invoke(B0.e(C0.t(iArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int c1(@Nullable short[] sArr) {
        if (sArr == null) {
            sArr = null;
        }
        return Arrays.hashCode(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long c2(long[] jArr, int i10, l<? super Integer, F0> defaultValue) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$elementAtOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= G0.t(jArr)) ? defaultValue.invoke(Integer.valueOf(i10)).l0() : G0.r(jArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short c3(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$first$0");
        return L0.i(C14960A.lc(sArr));
    }

    @NotNull
    public static final Vf.l c4(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$indices$0");
        return C14960A.ze(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte c5(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$last$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr) - 1;
        if (t10 >= 0) {
            while (true) {
                int i10 = t10 - 1;
                byte r10 = y0.r(bArr, t10);
                if (!predicate.invoke(x0.b(r10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    t10 = i10;
                } else {
                    return r10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float c6(short[] sArr, l<? super L0, Float> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(L0.b(M0.r(sArr, 0))).floatValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(L0.b(M0.r(sArr, i10))).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double c7(int[] iArr, l<? super B0, Double> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(B0.e(C0.t(iArr, 0))).doubleValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(B0.e(C0.t(iArr, i10))).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int[] c8(int[] iArr, l<? super B0, P0> action) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$onEach$0");
        M.p(action, "action");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            action.invoke(B0.e(C0.t(iArr, i10)));
        }
        return iArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long c9(long[] jArr, p<? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceRight$0");
        M.p(operation, "operation");
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long r10 = G0.r(jArr, Ne2);
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            r10 = operation.invoke(F0.b(G0.r(jArr, i10)), F0.b(r10)).l0();
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> ca(long[] jArr, R r10, q<? super Integer, ? super R, ? super F0, ? extends R> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$scanIndexed$0");
        M.p(operation, "operation");
        if (G0.w(jArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(G0.t(jArr) + 1);
        arrayList.add(r10);
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, F0.b(G0.r(jArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    public static void cb(int[] iArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = C0.v(iArr);
        }
        bb(iArr, i10, i11);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int cc(int[] iArr, l<? super B0, B0> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int o10 = B0.o(0);
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            o10 = B0.o(o10 + selector.invoke(B0.e(C0.t(iArr, i10))).q0());
        }
        return o10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<B0, R>> cd(@NotNull int[] iArr, @NotNull R[] other) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$zip$0");
        M.p(other, "other");
        int min = Math.min(C0.v(iArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            int t10 = C0.t(iArr, i10);
            arrayList.add(v0.a(B0.e(t10), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean d0(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$all$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (!predicate.invoke(L0.b(M0.r(sArr, i10))).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int d1(@Nullable long[] jArr) {
        if (jArr == null) {
            jArr = null;
        }
        return Arrays.hashCode(jArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte d2(byte[] bArr, int i10, l<? super Integer, x0> defaultValue) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$elementAtOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= y0.t(bArr)) ? defaultValue.invoke(Integer.valueOf(i10)).j0() : y0.r(bArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short d3(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$first$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                return r10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void d4(byte[] bArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long d5(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$last$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr) - 1;
        if (t10 >= 0) {
            while (true) {
                int i10 = t10 - 1;
                long r10 = G0.r(jArr, t10);
                if (!predicate.invoke(F0.b(r10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    t10 = i10;
                } else {
                    return r10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R d6(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOf$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(L0.b(M0.r(sArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float d7(int[] iArr, l<? super B0, Float> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(B0.e(C0.t(iArr, 0))).floatValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(B0.e(C0.t(iArr, i10))).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final short[] d8(short[] sArr, l<? super L0, P0> action) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$onEach$0");
        M.p(action, "action");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            action.invoke(L0.b(M0.r(sArr, i10)));
        }
        return sArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short d9(short[] sArr, p<? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceRight$0");
        M.p(operation, "operation");
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short r10 = M0.r(sArr, Pe2);
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            r10 = operation.invoke(L0.b(M0.r(sArr, i10)), L0.b(r10)).j0();
        }
        return r10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> da(int[] iArr, R r10, q<? super Integer, ? super R, ? super B0, ? extends R> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$scanIndexed$0");
        M.p(operation, "operation");
        if (C0.z(iArr)) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(C0.v(iArr) + 1);
        arrayList.add(r10);
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, B0.e(C0.t(iArr, i10)));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void db(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sort$0");
        if (M0.t(sArr) > 1) {
            pf.F0.k(sArr, 0, M0.t(sArr));
        }
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int dc(long[] jArr, l<? super F0, B0> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int o10 = B0.o(0);
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            o10 = B0.o(o10 + selector.invoke(F0.b(G0.r(jArr, i10))).q0());
        }
        return o10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<F0, R>> dd(@NotNull long[] jArr, @NotNull Iterable<? extends R> other) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$zip$0");
        M.p(other, "other");
        int t10 = G0.t(jArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), t10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= t10) {
                break;
            }
            arrayList.add(v0.a(F0.b(G0.r(jArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean e0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$any$0");
        return C14960A.u5(iArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static String e1(@Nullable byte[] bArr) {
        String r32;
        return (bArr == null || (r32 = S.r3(y0.b(bArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : r32;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final x0 e2(byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$elementAtOrNull$0");
        return u4(bArr, i10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final B0 e3(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$firstOrNull$0");
        if (C0.z(iArr)) {
            return null;
        }
        return B0.e(C0.t(iArr, 0));
    }

    @NotNull
    public static final Vf.l e4(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$indices$0");
        return C14960A.Ee(jArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long e5(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$last$0");
        return F0.i(C14960A.Qh(jArr));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R e6(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        R invoke = selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(x0.b(y0.r(bArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R e7(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(B0.e(C0.t(iArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final byte[] e8(byte[] bArr, p<? super Integer, ? super x0, P0> action) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$onEachIndexed$0");
        M.p(action, "action");
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            action.invoke(Integer.valueOf(i11), x0.b(y0.r(bArr, i10)));
            i10++;
            i11++;
        }
        return bArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int e9(int[] iArr, q<? super Integer, ? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceRightIndexed$0");
        M.p(operation, "operation");
        int Me2 = C14960A.Me(iArr);
        if (Me2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int t10 = C0.t(iArr, Me2);
        for (int i10 = Me2 - 1; i10 >= 0; i10--) {
            t10 = operation.n(Integer.valueOf(i10), B0.e(C0.t(iArr, i10)), B0.e(t10)).q0();
        }
        return t10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void ea(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$shuffle$0");
        fa(iArr, Tf.f.f24956b);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void eb(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sortDescending$0");
        if (C0.v(iArr) > 1) {
            Sa(iArr);
            C14960A.qr(iArr);
        }
    }

    @j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int ec(@NotNull B0[] b0Arr) {
        M.p(b0Arr, "<this>");
        int i10 = 0;
        for (B0 b02 : b0Arr) {
            i10 = B0.o(i10 + b02.q0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<B0, R>> ed(@NotNull int[] iArr, @NotNull Iterable<? extends R> other) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$zip$0");
        M.p(other, "other");
        int v10 = C0.v(iArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), v10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= v10) {
                break;
            }
            arrayList.add(v0.a(B0.e(C0.t(iArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean f0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$any$0");
        return C14960A.m5(bArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static String f1(@Nullable int[] iArr) {
        String r32;
        return (iArr == null || (r32 = S.r3(C0.k(iArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : r32;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final L0 f2(short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$elementAtOrNull$0");
        return v4(sArr, i10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final x0 f3(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$firstOrNull$0");
        if (y0.w(bArr)) {
            return null;
        }
        return x0.b(y0.r(bArr, 0));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void f4(long[] jArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int f5(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$last$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr) - 1;
        if (v10 >= 0) {
            while (true) {
                int i10 = v10 - 1;
                int t10 = C0.t(iArr, v10);
                if (!predicate.invoke(B0.e(t10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    v10 = i10;
                } else {
                    return t10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double f6(byte[] bArr, l<? super x0, Double> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        double doubleValue = selector.invoke(x0.b(y0.r(bArr, 0))).doubleValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(x0.b(y0.r(bArr, i10))).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double f7(short[] sArr, l<? super L0, Double> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(L0.b(M0.r(sArr, 0))).doubleValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(L0.b(M0.r(sArr, i10))).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final int[] f8(int[] iArr, p<? super Integer, ? super B0, P0> action) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$onEachIndexed$0");
        M.p(action, "action");
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            action.invoke(Integer.valueOf(i11), B0.e(C0.t(iArr, i10)));
            i10++;
            i11++;
        }
        return iArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte f9(byte[] bArr, q<? super Integer, ? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceRightIndexed$0");
        M.p(operation, "operation");
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte r10 = y0.r(bArr, Ie2);
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            r10 = operation.n(Integer.valueOf(i10), x0.b(y0.r(bArr, i10)), x0.b(r10)).j0();
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void fa(@NotNull int[] iArr, @NotNull Tf.f random) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$shuffle$0");
        M.p(random, "random");
        for (int Me2 = C14960A.Me(iArr); Me2 > 0; Me2--) {
            int m10 = random.m(Me2 + 1);
            int t10 = C0.t(iArr, Me2);
            C0.B(iArr, Me2, C0.t(iArr, m10));
            C0.B(iArr, m10, t10);
        }
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void fb(@NotNull long[] jArr, int i10, int i11) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sortDescending$0");
        Ta(jArr, i10, i11);
        C14960A.tr(jArr, i10, i11);
    }

    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int fc(short[] sArr, l<? super L0, B0> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        int o10 = B0.o(0);
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            o10 = B0.o(o10 + selector.invoke(L0.b(M0.r(sArr, i10))).q0());
        }
        return o10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <V> List<V> fd(byte[] bArr, byte[] bArr2, p<? super x0, ? super x0, ? extends V> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$zip$0");
        M.p(bArr2, "$v$c$kotlin-UByteArray$-other$0");
        M.p(transform, "transform");
        int min = Math.min(y0.t(bArr), y0.t(bArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(x0.b(y0.r(bArr, i10)), x0.b(y0.r(bArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean g0(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$any$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (predicate.invoke(x0.b(y0.r(bArr, i10))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static String g1(@Nullable short[] sArr) {
        String r32;
        return (sArr == null || (r32 = S.r3(M0.b(sArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : r32;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final B0 g2(int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$elementAtOrNull$0");
        return w4(iArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final x0 g3(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$firstOrNull$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                return x0.b(r10);
            }
        }
        return null;
    }

    @NotNull
    public static final Vf.l g4(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$indices$0");
        return C14960A.Ge(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short g5(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$last$0");
        return L0.i(C14960A.Uh(sArr));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float g6(byte[] bArr, l<? super x0, Float> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        float floatValue = selector.invoke(x0.b(y0.r(bArr, 0))).floatValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(x0.b(y0.r(bArr, i10))).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float g7(short[] sArr, l<? super L0, Float> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(L0.b(M0.r(sArr, 0))).floatValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(L0.b(M0.r(sArr, i10))).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final long[] g8(long[] jArr, p<? super Integer, ? super F0, P0> action) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$onEachIndexed$0");
        M.p(action, "action");
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            action.invoke(Integer.valueOf(i11), F0.b(G0.r(jArr, i10)));
            i10++;
            i11++;
        }
        return jArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short g9(short[] sArr, q<? super Integer, ? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceRightIndexed$0");
        M.p(operation, "operation");
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short r10 = M0.r(sArr, Pe2);
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            r10 = operation.n(Integer.valueOf(i10), L0.b(M0.r(sArr, i10)), L0.b(r10)).j0();
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void ga(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$shuffle$0");
        ja(bArr, Tf.f.f24956b);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void gb(@NotNull byte[] bArr, int i10, int i11) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sortDescending$0");
        Va(bArr, i10, i11);
        C14960A.jr(bArr, i10, i11);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long gc(byte[] bArr, l<? super x0, F0> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sumOf$0");
        M.p(selector, "selector");
        long i10 = F0.i(0L);
        int t10 = y0.t(bArr);
        for (int i11 = 0; i11 < t10; i11++) {
            i10 = F0.i(i10 + selector.invoke(x0.b(y0.r(bArr, i11))).l0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<L0, R>> gd(@NotNull short[] sArr, @NotNull Iterable<? extends R> other) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$zip$0");
        M.p(other, "other");
        int t10 = M0.t(sArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), t10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= t10) {
                break;
            }
            arrayList.add(v0.a(L0.b(M0.r(sArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean h0(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$any$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (predicate.invoke(F0.b(G0.r(jArr, i10))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static String h1(@Nullable long[] jArr) {
        String r32;
        return (jArr == null || (r32 = S.r3(G0.b(jArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : r32;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final F0 h2(long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$elementAtOrNull$0");
        return x4(jArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final F0 h3(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$firstOrNull$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                return F0.b(r10);
            }
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void h4(short[] sArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short h5(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$last$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr) - 1;
        if (t10 >= 0) {
            while (true) {
                int i10 = t10 - 1;
                short r10 = M0.r(sArr, t10);
                if (!predicate.invoke(L0.b(r10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    t10 = i10;
                } else {
                    return r10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R h6(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        R invoke = selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(F0.b(G0.r(jArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R h7(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOf$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(L0.b(M0.r(sArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final short[] h8(short[] sArr, p<? super Integer, ? super L0, P0> action) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$onEachIndexed$0");
        M.p(action, "action");
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            action.invoke(Integer.valueOf(i11), L0.b(M0.r(sArr, i10)));
            i10++;
            i11++;
        }
        return sArr;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long h9(long[] jArr, q<? super Integer, ? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceRightIndexed$0");
        M.p(operation, "operation");
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long r10 = G0.r(jArr, Ne2);
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            r10 = operation.n(Integer.valueOf(i10), F0.b(G0.r(jArr, i10)), F0.b(r10)).l0();
        }
        return r10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void ha(@NotNull long[] jArr, @NotNull Tf.f random) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$shuffle$0");
        M.p(random, "random");
        for (int Ne2 = C14960A.Ne(jArr); Ne2 > 0; Ne2--) {
            int m10 = random.m(Ne2 + 1);
            long r10 = G0.r(jArr, Ne2);
            G0.y(jArr, Ne2, G0.r(jArr, m10));
            G0.y(jArr, m10, r10);
        }
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void hb(@NotNull short[] sArr, int i10, int i11) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sortDescending$0");
        Xa(sArr, i10, i11);
        C14960A.xr(sArr, i10, i11);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long hc(int[] iArr, l<? super B0, F0> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sumOf$0");
        M.p(selector, "selector");
        long i10 = F0.i(0L);
        int v10 = C0.v(iArr);
        for (int i11 = 0; i11 < v10; i11++) {
            i10 = F0.i(i10 + selector.invoke(B0.e(C0.t(iArr, i11))).l0());
        }
        return i10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<x0, R>> hd(@NotNull byte[] bArr, @NotNull Iterable<? extends R> other) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$zip$0");
        M.p(other, "other");
        int t10 = y0.t(bArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), t10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= t10) {
                break;
            }
            arrayList.add(v0.a(x0.b(y0.r(bArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean i0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$any$0");
        return C14960A.w5(jArr);
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final long[] i1(long[] jArr, long[] jArr2, int i10, int i11, int i12) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$copyInto$0");
        M.p(jArr2, "$v$c$kotlin-ULongArray$-destination$0");
        C14985q.A0(jArr, jArr2, i10, i11, i12);
        return jArr2;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void i2(@NotNull int[] iArr, int i10, int i11, int i12) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$fill$0");
        C14985q.K1(iArr, i10, i11, i12);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final F0 i3(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$firstOrNull$0");
        if (G0.w(jArr)) {
            return null;
        }
        return F0.b(G0.r(jArr, 0));
    }

    public static final int i4(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$lastIndex$0");
        return C14960A.Me(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int i5(long[] jArr, long j10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$lastIndexOf$0");
        return C14960A.di(jArr, j10);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double i6(long[] jArr, l<? super F0, Double> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        double doubleValue = selector.invoke(F0.b(G0.r(jArr, 0))).doubleValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(F0.b(G0.r(jArr, i10))).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R i7(byte[] bArr, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        R invoke = selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(x0.b(y0.r(bArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] i8(long[] jArr, long j10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$plus$0");
        return G0.k(C14985q.t3(jArr, j10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final B0 i9(int[] iArr, q<? super Integer, ? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceRightIndexedOrNull$0");
        M.p(operation, "operation");
        int Me2 = C14960A.Me(iArr);
        if (Me2 < 0) {
            return null;
        }
        int t10 = C0.t(iArr, Me2);
        for (int i10 = Me2 - 1; i10 >= 0; i10--) {
            t10 = operation.n(Integer.valueOf(i10), B0.e(C0.t(iArr, i10)), B0.e(t10)).q0();
        }
        return B0.e(t10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void ia(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$shuffle$0");
        ha(jArr, Tf.f.f24956b);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void ib(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sortDescending$0");
        if (y0.t(bArr) > 1) {
            Za(bArr);
            C14960A.ir(bArr);
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long ic(long[] jArr, l<? super F0, F0> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sumOf$0");
        M.p(selector, "selector");
        long i10 = F0.i(0L);
        int t10 = G0.t(jArr);
        for (int i11 = 0; i11 < t10; i11++) {
            i10 = F0.i(i10 + selector.invoke(F0.b(G0.r(jArr, i11))).l0());
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <V> List<V> id(int[] iArr, int[] iArr2, p<? super B0, ? super B0, ? extends V> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$zip$0");
        M.p(iArr2, "$v$c$kotlin-UIntArray$-other$0");
        M.p(transform, "transform");
        int min = Math.min(C0.v(iArr), C0.v(iArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(B0.e(C0.t(iArr, i10)), B0.e(C0.t(iArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean j0(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$any$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            if (predicate.invoke(B0.e(C0.t(iArr, i10))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static long[] j1(long[] jArr, long[] jArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = G0.t(jArr);
        }
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$copyInto$0");
        M.p(jArr2, "$v$c$kotlin-ULongArray$-destination$0");
        C14985q.A0(jArr, jArr2, i10, i11, i12);
        return jArr2;
    }

    public static void j2(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = C0.v(iArr);
        }
        i2(iArr, i10, i11, i12);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final B0 j3(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$firstOrNull$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                return B0.e(t10);
            }
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void j4(int[] iArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int j5(short[] sArr, short s10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$lastIndexOf$0");
        return C14960A.fi(sArr, s10);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float j6(long[] jArr, l<? super F0, Float> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        float floatValue = selector.invoke(F0.b(G0.r(jArr, 0))).floatValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(F0.b(G0.r(jArr, i10))).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double j7(byte[] bArr, l<? super x0, Double> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        double doubleValue = selector.invoke(x0.b(y0.r(bArr, 0))).doubleValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(x0.b(y0.r(bArr, i10))).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] j8(@NotNull int[] iArr, @NotNull Collection<B0> elements) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$plus$0");
        M.p(elements, "elements");
        int v10 = C0.v(iArr);
        int[] copyOf = Arrays.copyOf(iArr, C0.v(iArr) + elements.size());
        M.o(copyOf, "copyOf(...)");
        Iterator<B0> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[v10] = it.next().q0();
            v10++;
        }
        return C0.m(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final x0 j9(byte[] bArr, q<? super Integer, ? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceRightIndexedOrNull$0");
        M.p(operation, "operation");
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 < 0) {
            return null;
        }
        byte r10 = y0.r(bArr, Ie2);
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            r10 = operation.n(Integer.valueOf(i10), x0.b(y0.r(bArr, i10)), x0.b(r10)).j0();
        }
        return x0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void ja(@NotNull byte[] bArr, @NotNull Tf.f random) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$shuffle$0");
        M.p(random, "random");
        for (int Ie2 = C14960A.Ie(bArr); Ie2 > 0; Ie2--) {
            int m10 = random.m(Ie2 + 1);
            byte r10 = y0.r(bArr, Ie2);
            y0.y(bArr, Ie2, y0.r(bArr, m10));
            y0.y(bArr, m10, r10);
        }
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void jb(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sortDescending$0");
        if (G0.t(jArr) > 1) {
            ab(jArr);
            C14960A.sr(jArr);
        }
    }

    @j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long jc(@NotNull F0[] f0Arr) {
        M.p(f0Arr, "<this>");
        long j10 = 0;
        for (F0 f02 : f0Arr) {
            j10 = F0.i(j10 + f02.l0());
        }
        return j10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> jd(byte[] bArr, R[] other, p<? super x0, ? super R, ? extends V> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int min = Math.min(y0.t(bArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(x0.b(y0.r(bArr, i10)), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean k0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$any$0");
        return C14960A.A5(sArr);
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final short[] k1(short[] sArr, short[] sArr2, int i10, int i11, int i12) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$copyInto$0");
        M.p(sArr2, "$v$c$kotlin-UShortArray$-destination$0");
        C14985q.C0(sArr, sArr2, i10, i11, i12);
        return sArr2;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void k2(@NotNull short[] sArr, short s10, int i10, int i11) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$fill$0");
        C14985q.N1(sArr, s10, i10, i11);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final L0 k3(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$firstOrNull$0");
        if (M0.w(sArr)) {
            return null;
        }
        return L0.b(M0.r(sArr, 0));
    }

    public static final int k4(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$lastIndex$0");
        return C14960A.Ie(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int k5(byte[] bArr, byte b10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$lastIndexOf$0");
        return C14960A.Yh(bArr, b10);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R k6(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        R invoke = selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(B0.e(C0.t(iArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float k7(byte[] bArr, l<? super x0, Float> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        float floatValue = selector.invoke(x0.b(y0.r(bArr, 0))).floatValue();
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(x0.b(y0.r(bArr, i10))).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] k8(short[] sArr, short s10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$plus$0");
        return M0.k(C14985q.A3(sArr, s10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final L0 k9(short[] sArr, q<? super Integer, ? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceRightIndexedOrNull$0");
        M.p(operation, "operation");
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 < 0) {
            return null;
        }
        short r10 = M0.r(sArr, Pe2);
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            r10 = operation.n(Integer.valueOf(i10), L0.b(M0.r(sArr, i10)), L0.b(r10)).j0();
        }
        return L0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void ka(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$shuffle$0");
        la(sArr, Tf.f.f24956b);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void kb(@NotNull int[] iArr, int i10, int i11) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sortDescending$0");
        bb(iArr, i10, i11);
        C14960A.rr(iArr, i10, i11);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long kc(short[] sArr, l<? super L0, F0> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sumOf$0");
        M.p(selector, "selector");
        long i10 = F0.i(0L);
        int t10 = M0.t(sArr);
        for (int i11 = 0; i11 < t10; i11++) {
            i10 = F0.i(i10 + selector.invoke(L0.b(M0.r(sArr, i11))).l0());
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <V> List<V> kd(long[] jArr, long[] jArr2, p<? super F0, ? super F0, ? extends V> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$zip$0");
        M.p(jArr2, "$v$c$kotlin-ULongArray$-other$0");
        M.p(transform, "transform");
        int min = Math.min(G0.t(jArr), G0.t(jArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(F0.b(G0.r(jArr, i10)), F0.b(G0.r(jArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final boolean l0(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$any$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            if (predicate.invoke(L0.b(M0.r(sArr, i10))).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static short[] l1(short[] sArr, short[] sArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = M0.t(sArr);
        }
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$copyInto$0");
        M.p(sArr2, "$v$c$kotlin-UShortArray$-destination$0");
        C14985q.C0(sArr, sArr2, i10, i11, i12);
        return sArr2;
    }

    public static void l2(short[] sArr, short s10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = M0.t(sArr);
        }
        k2(sArr, s10, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final L0 l3(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$firstOrNull$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                return L0.b(r10);
            }
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void l4(byte[] bArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int l5(int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$lastIndexOf$0");
        return C14960A.ci(iArr, i10);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double l6(int[] iArr, l<? super B0, Double> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        double doubleValue = selector.invoke(B0.e(C0.t(iArr, 0))).doubleValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(B0.e(C0.t(iArr, i10))).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R l7(long[] jArr, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        R invoke = selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(F0.b(G0.r(jArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] l8(int[] iArr, int[] iArr2) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$plus$0");
        M.p(iArr2, "$v$c$kotlin-UIntArray$-elements$0");
        return C0.m(C14985q.s3(iArr, iArr2));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final F0 l9(long[] jArr, q<? super Integer, ? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceRightIndexedOrNull$0");
        M.p(operation, "operation");
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 < 0) {
            return null;
        }
        long r10 = G0.r(jArr, Ne2);
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            r10 = operation.n(Integer.valueOf(i10), F0.b(G0.r(jArr, i10)), F0.b(r10)).l0();
        }
        return F0.b(r10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void la(@NotNull short[] sArr, @NotNull Tf.f random) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$shuffle$0");
        M.p(random, "random");
        for (int Pe2 = C14960A.Pe(sArr); Pe2 > 0; Pe2--) {
            int m10 = random.m(Pe2 + 1);
            short r10 = M0.r(sArr, Pe2);
            M0.y(sArr, Pe2, M0.r(sArr, m10));
            M0.y(sArr, m10, r10);
        }
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void lb(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sortDescending$0");
        if (M0.t(sArr) > 1) {
            db(sArr);
            C14960A.wr(sArr);
        }
    }

    @j(name = "sumOfUShort")
    @InterfaceC14422l0(version = "1.5")
    public static final int lc(@NotNull L0[] l0Arr) {
        M.p(l0Arr, "<this>");
        int i10 = 0;
        for (L0 l02 : l0Arr) {
            i10 = B0.o(i10 + B0.o(l02.j0() & 65535));
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> ld(long[] jArr, Iterable<? extends R> other, p<? super F0, ? super R, ? extends V> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int t10 = G0.t(jArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), t10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= t10) {
                break;
            }
            arrayList.add(transform.invoke(F0.b(G0.r(jArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] m0(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$asByteArray$0");
        return bArr;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] m1(byte[] bArr, byte[] bArr2, int i10, int i11, int i12) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$copyInto$0");
        M.p(bArr2, "$v$c$kotlin-UByteArray$-destination$0");
        C14985q.v0(bArr, bArr2, i10, i11, i12);
        return bArr2;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void m2(@NotNull long[] jArr, long j10, int i10, int i11) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$fill$0");
        C14985q.L1(jArr, j10, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> m3(byte[] bArr, l<? super x0, ? extends Iterable<? extends R>> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$flatMap$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            pf.M.t0(arrayList, transform.invoke(x0.b(y0.r(bArr, i10))));
        }
        return arrayList;
    }

    public static final int m4(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$lastIndex$0");
        return C14960A.Ne(jArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final B0 m5(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$lastOrNull$0");
        if (C0.z(iArr)) {
            return null;
        }
        return B0.e(C0.t(iArr, C0.v(iArr) - 1));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float m6(int[] iArr, l<? super B0, Float> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        float floatValue = selector.invoke(B0.e(C0.t(iArr, 0))).floatValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(B0.e(C0.t(iArr, i10))).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double m7(long[] jArr, l<? super F0, Double> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        double doubleValue = selector.invoke(F0.b(G0.r(jArr, 0))).doubleValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(F0.b(G0.r(jArr, i10))).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] m8(byte[] bArr, byte b10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$plus$0");
        return y0.k(C14985q.e3(bArr, b10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final x0 m9(byte[] bArr, p<? super x0, ? super x0, x0> operation) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reduceRightOrNull$0");
        M.p(operation, "operation");
        int Ie2 = C14960A.Ie(bArr);
        if (Ie2 < 0) {
            return null;
        }
        byte r10 = y0.r(bArr, Ie2);
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            r10 = operation.invoke(x0.b(y0.r(bArr, i10)), x0.b(r10)).j0();
        }
        return x0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int ma(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$single$0");
        return B0.o(C14960A.vt(iArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> mb(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sorted$0");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        int[] m10 = C0.m(copyOf);
        Sa(m10);
        return C15290b.a(m10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> mc(@NotNull byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$take$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= y0.t(bArr)) {
            return S.a6(y0.b(bArr));
        }
        if (i10 == 1) {
            return G.l(x0.b(y0.r(bArr, 0)));
        }
        ArrayList arrayList = new ArrayList(i10);
        int t10 = y0.t(bArr);
        int i11 = 0;
        for (int i12 = 0; i12 < t10; i12++) {
            arrayList.add(x0.b(y0.r(bArr, i12)));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> md(byte[] bArr, Iterable<? extends R> other, p<? super x0, ? super R, ? extends V> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int t10 = y0.t(bArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), t10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= t10) {
                break;
            }
            arrayList.add(transform.invoke(x0.b(y0.r(bArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] n0(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$asIntArray$0");
        return iArr;
    }

    public static byte[] n1(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = y0.t(bArr);
        }
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$copyInto$0");
        M.p(bArr2, "$v$c$kotlin-UByteArray$-destination$0");
        C14985q.v0(bArr, bArr2, i10, i11, i12);
        return bArr2;
    }

    public static void n2(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = G0.t(jArr);
        }
        m2(jArr, j10, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> n3(long[] jArr, l<? super F0, ? extends Iterable<? extends R>> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$flatMap$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            pf.M.t0(arrayList, transform.invoke(F0.b(G0.r(jArr, i10))));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void n4(long[] jArr) {
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final x0 n5(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$lastOrNull$0");
        if (y0.w(bArr)) {
            return null;
        }
        return x0.b(y0.r(bArr, y0.t(bArr) - 1));
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R n6(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        R invoke = selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(L0.b(M0.r(sArr, i10)));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float n7(long[] jArr, l<? super F0, Float> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        float floatValue = selector.invoke(F0.b(G0.r(jArr, 0))).floatValue();
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(F0.b(G0.r(jArr, i10))).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] n8(byte[] bArr, byte[] bArr2) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$plus$0");
        M.p(bArr2, "$v$c$kotlin-UByteArray$-elements$0");
        return y0.k(C14985q.g3(bArr, bArr2));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final B0 n9(int[] iArr, p<? super B0, ? super B0, B0> operation) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reduceRightOrNull$0");
        M.p(operation, "operation");
        int Me2 = C14960A.Me(iArr);
        if (Me2 < 0) {
            return null;
        }
        int t10 = C0.t(iArr, Me2);
        for (int i10 = Me2 - 1; i10 >= 0; i10--) {
            t10 = operation.invoke(B0.e(C0.t(iArr, i10)), B0.e(t10)).q0();
        }
        return B0.e(t10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte na(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$single$0");
        return x0.i(C14960A.nt(bArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> nb(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sorted$0");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        byte[] k10 = y0.k(copyOf);
        Za(k10);
        return C15290b.b(k10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> nc(@NotNull short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$take$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= M0.t(sArr)) {
            return S.a6(M0.b(sArr));
        }
        if (i10 == 1) {
            return G.l(L0.b(M0.r(sArr, 0)));
        }
        ArrayList arrayList = new ArrayList(i10);
        int t10 = M0.t(sArr);
        int i11 = 0;
        for (int i12 = 0; i12 < t10; i12++) {
            arrayList.add(L0.b(M0.r(sArr, i12)));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> nd(int[] iArr, R[] other, p<? super B0, ? super R, ? extends V> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int min = Math.min(C0.v(iArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(B0.e(C0.t(iArr, i10)), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] o0(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$asLongArray$0");
        return jArr;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final int[] o1(int[] iArr, int[] iArr2, int i10, int i11, int i12) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$copyInto$0");
        M.p(iArr2, "$v$c$kotlin-UIntArray$-destination$0");
        C14985q.z0(iArr, iArr2, i10, i11, i12);
        return iArr2;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void o2(@NotNull byte[] bArr, byte b10, int i10, int i11) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$fill$0");
        C14985q.G1(bArr, b10, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> o3(int[] iArr, l<? super B0, ? extends Iterable<? extends R>> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$flatMap$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            pf.M.t0(arrayList, transform.invoke(B0.e(C0.t(iArr, i10))));
        }
        return arrayList;
    }

    public static final int o4(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$lastIndex$0");
        return C14960A.Pe(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final x0 o5(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$lastOrNull$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr) - 1;
        if (t10 < 0) {
            return null;
        }
        while (true) {
            int i10 = t10 - 1;
            byte r10 = y0.r(bArr, t10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                return x0.b(r10);
            }
            if (i10 < 0) {
                return null;
            }
            t10 = i10;
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double o6(short[] sArr, l<? super L0, Double> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        double doubleValue = selector.invoke(L0.b(M0.r(sArr, 0))).doubleValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(L0.b(M0.r(sArr, i10))).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R o7(int[] iArr, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        R invoke = selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(B0.e(C0.t(iArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] o8(@NotNull long[] jArr, @NotNull Collection<F0> elements) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$plus$0");
        M.p(elements, "elements");
        int t10 = G0.t(jArr);
        long[] copyOf = Arrays.copyOf(jArr, G0.t(jArr) + elements.size());
        M.o(copyOf, "copyOf(...)");
        Iterator<F0> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[t10] = it.next().l0();
            t10++;
        }
        return G0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final F0 o9(long[] jArr, p<? super F0, ? super F0, F0> operation) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reduceRightOrNull$0");
        M.p(operation, "operation");
        int Ne2 = C14960A.Ne(jArr);
        if (Ne2 < 0) {
            return null;
        }
        long r10 = G0.r(jArr, Ne2);
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            r10 = operation.invoke(F0.b(G0.r(jArr, i10)), F0.b(r10)).l0();
        }
        return F0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte oa(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$single$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        x0 x0Var = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                x0Var = x0.b(r10);
                z10 = true;
            }
        }
        if (z10) {
            return x0Var.j0();
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> ob(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sorted$0");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        long[] k10 = G0.k(copyOf);
        ab(k10);
        return C15290b.c(k10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> oc(@NotNull int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$take$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= C0.v(iArr)) {
            return S.a6(C0.k(iArr));
        }
        if (i10 == 1) {
            return G.l(B0.e(C0.t(iArr, 0)));
        }
        ArrayList arrayList = new ArrayList(i10);
        int v10 = C0.v(iArr);
        int i11 = 0;
        for (int i12 = 0; i12 < v10; i12++) {
            arrayList.add(B0.e(C0.t(iArr, i12)));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<Z<B0, B0>> od(@NotNull int[] iArr, @NotNull int[] iArr2) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$zip$0");
        M.p(iArr2, "$v$c$kotlin-UIntArray$-other$0");
        int min = Math.min(C0.v(iArr), C0.v(iArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(v0.a(B0.e(C0.t(iArr, i10)), B0.e(C0.t(iArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] p0(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$asShortArray$0");
        return sArr;
    }

    public static int[] p1(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = C0.v(iArr);
        }
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$copyInto$0");
        M.p(iArr2, "$v$c$kotlin-UIntArray$-destination$0");
        C14985q.z0(iArr, iArr2, i10, i11, i12);
        return iArr2;
    }

    public static void p2(byte[] bArr, byte b10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = y0.t(bArr);
        }
        o2(bArr, b10, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> p3(short[] sArr, l<? super L0, ? extends Iterable<? extends R>> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$flatMap$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            pf.M.t0(arrayList, transform.invoke(L0.b(M0.r(sArr, i10))));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static void p4(short[] sArr) {
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final F0 p5(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$lastOrNull$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr) - 1;
        if (t10 < 0) {
            return null;
        }
        while (true) {
            int i10 = t10 - 1;
            long r10 = G0.r(jArr, t10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                return F0.b(r10);
            }
            if (i10 < 0) {
                return null;
            }
            t10 = i10;
        }
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float p6(short[] sArr, l<? super L0, Float> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOfOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        float floatValue = selector.invoke(L0.b(M0.r(sArr, 0))).floatValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(L0.b(M0.r(sArr, i10))).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double p7(int[] iArr, l<? super B0, Double> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        double doubleValue = selector.invoke(B0.e(C0.t(iArr, 0))).doubleValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(B0.e(C0.t(iArr, i10))).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] p8(short[] sArr, short[] sArr2) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$plus$0");
        M.p(sArr2, "$v$c$kotlin-UShortArray$-elements$0");
        return M0.k(C14985q.B3(sArr, sArr2));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final L0 p9(short[] sArr, p<? super L0, ? super L0, L0> operation) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reduceRightOrNull$0");
        M.p(operation, "operation");
        int Pe2 = C14960A.Pe(sArr);
        if (Pe2 < 0) {
            return null;
        }
        short r10 = M0.r(sArr, Pe2);
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            r10 = operation.invoke(L0.b(M0.r(sArr, i10)), L0.b(r10)).j0();
        }
        return L0.b(r10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long pa(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$single$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        F0 f02 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                f02 = F0.b(r10);
                z10 = true;
            }
        }
        if (z10) {
            return f02.l0();
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> pb(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sorted$0");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        short[] k10 = M0.k(copyOf);
        db(k10);
        return C15290b.d(k10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> pc(@NotNull long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$take$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= G0.t(jArr)) {
            return S.a6(G0.b(jArr));
        }
        if (i10 == 1) {
            return G.l(F0.b(G0.r(jArr, 0)));
        }
        ArrayList arrayList = new ArrayList(i10);
        int t10 = G0.t(jArr);
        int i11 = 0;
        for (int i12 = 0; i12 < t10; i12++) {
            arrayList.add(F0.b(G0.r(jArr, i12)));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> pd(short[] sArr, R[] other, p<? super L0, ? super R, ? extends V> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int min = Math.min(M0.t(sArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(L0.b(M0.r(sArr, i10)), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] q0(byte[] bArr) {
        M.p(bArr, "<this>");
        return y0.k(bArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] q1(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$copyOf$0");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        return C0.m(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> q2(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$filter$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                arrayList.add(x0.b(r10));
            }
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> q3(byte[] bArr, p<? super Integer, ? super x0, ? extends Iterable<? extends R>> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$flatMapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            pf.M.t0(arrayList, transform.invoke(Integer.valueOf(i11), x0.b(y0.r(bArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short q4(short[] sArr, int i10, l<? super Integer, L0> defaultValue) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$getOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= M0.t(sArr)) ? defaultValue.invoke(Integer.valueOf(i10)).j0() : M0.r(sArr, i10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final F0 q5(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$lastOrNull$0");
        if (G0.w(jArr)) {
            return null;
        }
        return F0.b(G0.r(jArr, G0.t(jArr) - 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R q6(long[] jArr, Comparator<? super R> comparator, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(F0.b(G0.r(jArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float q7(int[] iArr, l<? super B0, Float> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        float floatValue = selector.invoke(B0.e(C0.t(iArr, 0))).floatValue();
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(B0.e(C0.t(iArr, i10))).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] q8(@NotNull short[] sArr, @NotNull Collection<L0> elements) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$plus$0");
        M.p(elements, "elements");
        int t10 = M0.t(sArr);
        short[] copyOf = Arrays.copyOf(sArr, M0.t(sArr) + elements.size());
        M.o(copyOf, "copyOf(...)");
        Iterator<L0> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[t10] = it.next().j0();
            t10++;
        }
        return M0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void q9(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reverse$0");
        C14960A.qr(iArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long qa(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$single$0");
        return F0.i(C14960A.xt(jArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] qb(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sortedArray$0");
        if (C0.z(iArr)) {
            return iArr;
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        int[] m10 = C0.m(copyOf);
        Sa(m10);
        return m10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> qc(@NotNull byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$takeLast$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int t10 = y0.t(bArr);
        if (i10 >= t10) {
            return S.a6(y0.b(bArr));
        }
        if (i10 == 1) {
            return G.l(x0.b(y0.r(bArr, t10 - 1)));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = t10 - i10; i11 < t10; i11++) {
            arrayList.add(x0.b(y0.r(bArr, i11)));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<F0, R>> qd(@NotNull long[] jArr, @NotNull R[] other) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$zip$0");
        M.p(other, "other");
        int min = Math.min(G0.t(jArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            long r10 = G0.r(jArr, i10);
            arrayList.add(v0.a(F0.b(r10), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] r0(int[] iArr) {
        M.p(iArr, "<this>");
        return C0.m(iArr);
    }

    @InterfaceC14443y
    @InterfaceC14441w
    @Ef.f
    @InterfaceC14422l0(version = "2.2")
    public static final short[] r1(short[] sArr, int i10, l<? super Integer, L0> init) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$copyOf$0");
        M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        short[] copyOf = Arrays.copyOf(sArr, i10);
        M.o(copyOf, "copyOf(...)");
        short[] k10 = M0.k(copyOf);
        for (int t10 = M0.t(sArr); t10 < i10; t10++) {
            M0.y(k10, t10, init.invoke(Integer.valueOf(t10)).j0());
        }
        return k10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> r2(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$filter$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                arrayList.add(F0.b(r10));
            }
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> r3(int[] iArr, p<? super Integer, ? super B0, ? extends Iterable<? extends R>> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$flatMapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            pf.M.t0(arrayList, transform.invoke(Integer.valueOf(i11), B0.e(C0.t(iArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int r4(int[] iArr, int i10, l<? super Integer, B0> defaultValue) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$getOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= C0.v(iArr)) ? defaultValue.invoke(Integer.valueOf(i10)).q0() : C0.t(iArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final B0 r5(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$lastOrNull$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr) - 1;
        if (v10 < 0) {
            return null;
        }
        while (true) {
            int i10 = v10 - 1;
            int t10 = C0.t(iArr, v10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                return B0.e(t10);
            }
            if (i10 < 0) {
                return null;
            }
            v10 = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R r6(byte[] bArr, Comparator<? super R> comparator, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(x0.b(y0.r(bArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R r7(short[] sArr, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        R invoke = selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(L0.b(M0.r(sArr, i10)));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] r8(int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$plus$0");
        return C0.m(C14985q.q3(iArr, i10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void r9(long[] jArr, int i10, int i11) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reverse$0");
        C14960A.tr(jArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int ra(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$single$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        B0 b02 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                b02 = B0.e(t10);
                z10 = true;
            }
        }
        if (z10) {
            return b02.q0();
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] rb(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sortedArray$0");
        if (y0.w(bArr)) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        byte[] k10 = y0.k(copyOf);
        Za(k10);
        return k10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<L0> rc(@NotNull short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$takeLast$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int t10 = M0.t(sArr);
        if (i10 >= t10) {
            return S.a6(M0.b(sArr));
        }
        if (i10 == 1) {
            return G.l(L0.b(M0.r(sArr, t10 - 1)));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = t10 - i10; i11 < t10; i11++) {
            arrayList.add(L0.b(M0.r(sArr, i11)));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <V> List<V> rd(short[] sArr, short[] sArr2, p<? super L0, ? super L0, ? extends V> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$zip$0");
        M.p(sArr2, "$v$c$kotlin-UShortArray$-other$0");
        M.p(transform, "transform");
        int min = Math.min(M0.t(sArr), M0.t(sArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(L0.b(M0.r(sArr, i10)), L0.b(M0.r(sArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] s0(long[] jArr) {
        M.p(jArr, "<this>");
        return G0.k(jArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] s1(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$copyOf$0");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        return y0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> s2(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$filter$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                arrayList.add(B0.e(t10));
            }
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> s3(long[] jArr, p<? super Integer, ? super F0, ? extends Iterable<? extends R>> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$flatMapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            pf.M.t0(arrayList, transform.invoke(Integer.valueOf(i11), F0.b(G0.r(jArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long s4(long[] jArr, int i10, l<? super Integer, F0> defaultValue) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$getOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= G0.t(jArr)) ? defaultValue.invoke(Integer.valueOf(i10)).l0() : G0.r(jArr, i10);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final L0 s5(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$lastOrNull$0");
        if (M0.w(sArr)) {
            return null;
        }
        return L0.b(M0.r(sArr, M0.t(sArr) - 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R s6(short[] sArr, Comparator<? super R> comparator, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(L0.b(M0.r(sArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double s7(short[] sArr, l<? super L0, Double> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        double doubleValue = selector.invoke(L0.b(M0.r(sArr, 0))).doubleValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(L0.b(M0.r(sArr, i10))).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] s8(long[] jArr, long[] jArr2) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$plus$0");
        M.p(jArr2, "$v$c$kotlin-ULongArray$-elements$0");
        return G0.k(C14985q.v3(jArr, jArr2));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void s9(byte[] bArr, int i10, int i11) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reverse$0");
        C14960A.jr(bArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short sa(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$single$0");
        return L0.i(C14960A.Bt(sArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] sb(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sortedArray$0");
        if (G0.w(jArr)) {
            return jArr;
        }
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        long[] k10 = G0.k(copyOf);
        ab(k10);
        return k10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> sc(@NotNull int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$takeLast$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int v10 = C0.v(iArr);
        if (i10 >= v10) {
            return S.a6(C0.k(iArr));
        }
        if (i10 == 1) {
            return G.l(B0.e(C0.t(iArr, v10 - 1)));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = v10 - i10; i11 < v10; i11++) {
            arrayList.add(B0.e(C0.t(iArr, i11)));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R, V> List<V> sd(short[] sArr, Iterable<? extends R> other, p<? super L0, ? super R, ? extends V> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$zip$0");
        M.p(other, "other");
        M.p(transform, "transform");
        int t10 = M0.t(sArr);
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), t10));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= t10) {
                break;
            }
            arrayList.add(transform.invoke(L0.b(M0.r(sArr, i10)), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] t0(short[] sArr) {
        M.p(sArr, "<this>");
        return M0.k(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte[] t1(byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$copyOf$0");
        byte[] copyOf = Arrays.copyOf(bArr, i10);
        M.o(copyOf, "copyOf(...)");
        return y0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> t2(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$filter$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                arrayList.add(L0.b(r10));
            }
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> t3(short[] sArr, p<? super Integer, ? super L0, ? extends Iterable<? extends R>> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$flatMapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            pf.M.t0(arrayList, transform.invoke(Integer.valueOf(i11), L0.b(M0.r(sArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte t4(byte[] bArr, int i10, l<? super Integer, x0> defaultValue) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$getOrElse$0");
        M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= y0.t(bArr)) ? defaultValue.invoke(Integer.valueOf(i10)).j0() : y0.r(bArr, i10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final L0 t5(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$lastOrNull$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr) - 1;
        if (t10 < 0) {
            return null;
        }
        while (true) {
            int i10 = t10 - 1;
            short r10 = M0.r(sArr, t10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                return L0.b(r10);
            }
            if (i10 < 0) {
                return null;
            }
            t10 = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R t6(int[] iArr, Comparator<? super R> comparator, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(B0.e(C0.t(iArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float t7(short[] sArr, l<? super L0, Float> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOfOrNull$0");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        float floatValue = selector.invoke(L0.b(M0.r(sArr, 0))).floatValue();
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(L0.b(M0.r(sArr, i10))).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] t8(@NotNull byte[] bArr, @NotNull Collection<x0> elements) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$plus$0");
        M.p(elements, "elements");
        int t10 = y0.t(bArr);
        byte[] copyOf = Arrays.copyOf(bArr, y0.t(bArr) + elements.size());
        M.o(copyOf, "copyOf(...)");
        Iterator<x0> it = elements.iterator();
        while (it.hasNext()) {
            copyOf[t10] = it.next().j0();
            t10++;
        }
        return y0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void t9(short[] sArr, int i10, int i11) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reverse$0");
        C14960A.xr(sArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short ta(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$single$0");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        L0 l02 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            if (predicate.invoke(L0.b(r10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                l02 = L0.b(r10);
                z10 = true;
            }
        }
        if (z10) {
            return l02.j0();
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] tb(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sortedArray$0");
        if (M0.w(sArr)) {
            return sArr;
        }
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        short[] k10 = M0.k(copyOf);
        db(k10);
        return k10;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<F0> tc(@NotNull long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$takeLast$0");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int t10 = G0.t(jArr);
        if (i10 >= t10) {
            return S.a6(G0.b(jArr));
        }
        if (i10 == 1) {
            return G.l(F0.b(G0.r(jArr, t10 - 1)));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = t10 - i10; i11 < t10; i11++) {
            arrayList.add(F0.b(G0.r(jArr, i11)));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<Z<x0, x0>> td(@NotNull byte[] bArr, @NotNull byte[] bArr2) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$zip$0");
        M.p(bArr2, "$v$c$kotlin-UByteArray$-other$0");
        int min = Math.min(y0.t(bArr), y0.t(bArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(v0.a(x0.b(y0.r(bArr, i10)), x0.b(y0.r(bArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<x0, V> u0(byte[] bArr, l<? super x0, ? extends V> valueSelector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$associateWith$0");
        M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(u.w(n0.j(y0.t(bArr)), 16));
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            linkedHashMap.put(x0.b(r10), valueSelector.invoke(x0.b(r10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long[] u1(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$copyOf$0");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        return G0.k(copyOf);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> u2(byte[] bArr, p<? super Integer, ? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$filterIndexed$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            byte r10 = y0.r(bArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), x0.b(r10)).booleanValue()) {
                arrayList.add(x0.b(r10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C u3(int[] iArr, C destination, p<? super Integer, ? super B0, ? extends Iterable<? extends R>> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$flatMapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            pf.M.t0(destination, transform.invoke(Integer.valueOf(i11), B0.e(C0.t(iArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final x0 u4(@NotNull byte[] bArr, int i10) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$getOrNull$0");
        if (i10 < 0 || i10 >= y0.t(bArr)) {
            return null;
        }
        return x0.b(y0.r(bArr, i10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> u5(byte[] bArr, l<? super x0, ? extends R> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$map$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(y0.t(bArr));
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            arrayList.add(transform.invoke(x0.b(y0.r(bArr, i10))));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R u6(long[] jArr, Comparator<? super R> comparator, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$maxOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(F0.b(G0.r(jArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R u7(long[] jArr, Comparator<? super R> comparator, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(F0.b(G0.r(jArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int u8(int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$random$0");
        return v8(iArr, Tf.f.f24956b);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void u9(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reverse$0");
        C14960A.ir(bArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final B0 ua(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$singleOrNull$0");
        if (C0.v(iArr) == 1) {
            return B0.e(C0.t(iArr, 0));
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final int[] ub(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sortedArrayDescending$0");
        if (C0.z(iArr)) {
            return iArr;
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        int[] m10 = C0.m(copyOf);
        eb(m10);
        return m10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> uc(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$takeLastWhile$0");
        M.p(predicate, "predicate");
        for (int Ie2 = C14960A.Ie(bArr); -1 < Ie2; Ie2--) {
            if (!predicate.invoke(x0.b(y0.r(bArr, Ie2))).booleanValue()) {
                return K1(bArr, Ie2 + 1);
            }
        }
        return S.a6(y0.b(bArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<Z<L0, L0>> ud(@NotNull short[] sArr, @NotNull short[] sArr2) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$zip$0");
        M.p(sArr2, "$v$c$kotlin-UShortArray$-other$0");
        int min = Math.min(M0.t(sArr), M0.t(sArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(v0.a(L0.b(M0.r(sArr, i10)), L0.b(M0.r(sArr2, i10))));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<F0, V> v0(long[] jArr, l<? super F0, ? extends V> valueSelector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$associateWith$0");
        M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(u.w(n0.j(G0.t(jArr)), 16));
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            linkedHashMap.put(F0.b(r10), valueSelector.invoke(F0.b(r10)));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @InterfaceC14441w
    @Ef.f
    @InterfaceC14422l0(version = "2.2")
    public static final int[] v1(int[] iArr, int i10, l<? super Integer, B0> init) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$copyOf$0");
        M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        int[] copyOf = Arrays.copyOf(iArr, i10);
        M.o(copyOf, "copyOf(...)");
        int[] m10 = C0.m(copyOf);
        for (int v10 = C0.v(iArr); v10 < i10; v10++) {
            C0.B(m10, v10, init.invoke(Integer.valueOf(v10)).q0());
        }
        return m10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> v2(int[] iArr, p<? super Integer, ? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$filterIndexed$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            int t10 = C0.t(iArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), B0.e(t10)).booleanValue()) {
                arrayList.add(B0.e(t10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C v3(short[] sArr, C destination, p<? super Integer, ? super L0, ? extends Iterable<? extends R>> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$flatMapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            pf.M.t0(destination, transform.invoke(Integer.valueOf(i11), L0.b(M0.r(sArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final L0 v4(@NotNull short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$getOrNull$0");
        if (i10 < 0 || i10 >= M0.t(sArr)) {
            return null;
        }
        return L0.b(M0.r(sArr, i10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> v5(long[] jArr, l<? super F0, ? extends R> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$map$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(G0.t(jArr));
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            arrayList.add(transform.invoke(F0.b(G0.r(jArr, i10))));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R v6(byte[] bArr, Comparator<? super R> comparator, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(x0.b(y0.r(bArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R v7(byte[] bArr, Comparator<? super R> comparator, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(x0.b(y0.r(bArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int v8(@NotNull int[] iArr, @NotNull Tf.f random) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$random$0");
        M.p(random, "random");
        if (C0.z(iArr)) {
            throw new NoSuchElementException("Array is empty.");
        }
        return C0.t(iArr, random.m(C0.v(iArr)));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void v9(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$reverse$0");
        C14960A.sr(jArr);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final x0 va(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$singleOrNull$0");
        if (y0.t(bArr) == 1) {
            return x0.b(y0.r(bArr, 0));
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final byte[] vb(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sortedArrayDescending$0");
        if (y0.w(bArr)) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        byte[] k10 = y0.k(copyOf);
        ib(k10);
        return k10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> vc(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$takeLastWhile$0");
        M.p(predicate, "predicate");
        for (int Ne2 = C14960A.Ne(jArr); -1 < Ne2; Ne2--) {
            if (!predicate.invoke(F0.b(G0.r(jArr, Ne2))).booleanValue()) {
                return N1(jArr, Ne2 + 1);
            }
        }
        return S.a6(G0.b(jArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<x0, R>> vd(@NotNull byte[] bArr, @NotNull R[] other) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$zip$0");
        M.p(other, "other");
        int min = Math.min(y0.t(bArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            byte r10 = y0.r(bArr, i10);
            arrayList.add(v0.a(x0.b(r10), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<B0, V> w0(int[] iArr, l<? super B0, ? extends V> valueSelector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$associateWith$0");
        M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(u.w(n0.j(C0.v(iArr)), 16));
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            linkedHashMap.put(B0.e(t10), valueSelector.invoke(B0.e(t10)));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @InterfaceC14441w
    @Ef.f
    @InterfaceC14422l0(version = "2.2")
    public static final long[] w1(long[] jArr, int i10, l<? super Integer, F0> init) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$copyOf$0");
        M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        long[] copyOf = Arrays.copyOf(jArr, i10);
        M.o(copyOf, "copyOf(...)");
        long[] k10 = G0.k(copyOf);
        for (int t10 = G0.t(jArr); t10 < i10; t10++) {
            G0.y(k10, t10, init.invoke(Integer.valueOf(t10)).l0());
        }
        return k10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> w2(long[] jArr, p<? super Integer, ? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$filterIndexed$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            long r10 = G0.r(jArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), F0.b(r10)).booleanValue()) {
                arrayList.add(F0.b(r10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C w3(byte[] bArr, C destination, p<? super Integer, ? super x0, ? extends Iterable<? extends R>> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$flatMapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            pf.M.t0(destination, transform.invoke(Integer.valueOf(i11), x0.b(y0.r(bArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final B0 w4(@NotNull int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$getOrNull$0");
        if (i10 < 0 || i10 >= C0.v(iArr)) {
            return null;
        }
        return B0.e(C0.t(iArr, i10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> w5(int[] iArr, l<? super B0, ? extends R> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$map$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(C0.v(iArr));
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            arrayList.add(transform.invoke(B0.e(C0.t(iArr, i10))));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R w6(short[] sArr, Comparator<? super R> comparator, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$maxOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(L0.b(M0.r(sArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R w7(short[] sArr, Comparator<? super R> comparator, l<? super L0, ? extends R> selector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$minOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (M0.w(sArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(L0.b(M0.r(sArr, 0)));
        int Pe2 = C14960A.Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(L0.b(M0.r(sArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte w8(byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$random$0");
        return z8(bArr, Tf.f.f24956b);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final void w9(int[] iArr, int i10, int i11) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reverse$0");
        C14960A.rr(iArr, i10, i11);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final x0 wa(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$singleOrNull$0");
        M.p(predicate, "predicate");
        int t10 = y0.t(bArr);
        x0 x0Var = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (predicate.invoke(x0.b(r10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                x0Var = x0.b(r10);
                z10 = true;
            }
        }
        if (z10) {
            return x0Var;
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final long[] wb(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$sortedArrayDescending$0");
        if (G0.w(jArr)) {
            return jArr;
        }
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        M.o(copyOf, "copyOf(...)");
        long[] k10 = G0.k(copyOf);
        jb(k10);
        return k10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<B0> wc(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$takeLastWhile$0");
        M.p(predicate, "predicate");
        for (int Me2 = C14960A.Me(iArr); -1 < Me2; Me2--) {
            if (!predicate.invoke(B0.e(C0.t(iArr, Me2))).booleanValue()) {
                return M1(iArr, Me2 + 1);
            }
        }
        return S.a6(C0.k(iArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final <R> List<Z<L0, R>> wd(@NotNull short[] sArr, @NotNull R[] other) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$zip$0");
        M.p(other, "other");
        int min = Math.min(M0.t(sArr), other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            short r10 = M0.r(sArr, i10);
            arrayList.add(v0.a(L0.b(r10), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<L0, V> x0(short[] sArr, l<? super L0, ? extends V> valueSelector) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$associateWith$0");
        M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(u.w(n0.j(M0.t(sArr)), 16));
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            linkedHashMap.put(L0.b(r10), valueSelector.invoke(L0.b(r10)));
        }
        return linkedHashMap;
    }

    @InterfaceC14443y
    @InterfaceC14441w
    @Ef.f
    @InterfaceC14422l0(version = "2.2")
    public static final byte[] x1(byte[] bArr, int i10, l<? super Integer, x0> init) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$copyOf$0");
        M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        byte[] copyOf = Arrays.copyOf(bArr, i10);
        M.o(copyOf, "copyOf(...)");
        byte[] k10 = y0.k(copyOf);
        for (int t10 = y0.t(bArr); t10 < i10; t10++) {
            y0.y(k10, t10, init.invoke(Integer.valueOf(t10)).j0());
        }
        return k10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> x2(short[] sArr, p<? super Integer, ? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$filterIndexed$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            short r10 = M0.r(sArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), L0.b(r10)).booleanValue()) {
                arrayList.add(L0.b(r10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C x3(long[] jArr, C destination, p<? super Integer, ? super F0, ? extends Iterable<? extends R>> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$flatMapIndexedTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = G0.t(jArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            pf.M.t0(destination, transform.invoke(Integer.valueOf(i11), F0.b(G0.r(jArr, i10))));
            i10++;
            i11++;
        }
        return destination;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final F0 x4(@NotNull long[] jArr, int i10) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$getOrNull$0");
        if (i10 < 0 || i10 >= G0.t(jArr)) {
            return null;
        }
        return F0.b(G0.r(jArr, i10));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> x5(short[] sArr, l<? super L0, ? extends R> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$map$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(M0.t(sArr));
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            arrayList.add(transform.invoke(L0.b(M0.r(sArr, i10))));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R x6(int[] iArr, Comparator<? super R> comparator, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(B0.e(C0.t(iArr, i10)));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R x7(int[] iArr, Comparator<? super R> comparator, l<? super B0, ? extends R> selector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$minOfWith$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (C0.z(iArr)) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(B0.e(C0.t(iArr, 0)));
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(B0.e(C0.t(iArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long x8(@NotNull long[] jArr, @NotNull Tf.f random) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$random$0");
        M.p(random, "random");
        if (G0.w(jArr)) {
            throw new NoSuchElementException("Array is empty.");
        }
        return G0.r(jArr, random.m(G0.t(jArr)));
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final void x9(short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$reverse$0");
        C14960A.wr(sArr);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final F0 xa(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$singleOrNull$0");
        M.p(predicate, "predicate");
        int t10 = G0.t(jArr);
        F0 f02 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (predicate.invoke(F0.b(r10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                f02 = F0.b(r10);
                z10 = true;
            }
        }
        if (z10) {
            return f02;
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final short[] xb(@NotNull short[] sArr) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$sortedArrayDescending$0");
        if (M0.w(sArr)) {
            return sArr;
        }
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        M.o(copyOf, "copyOf(...)");
        short[] k10 = M0.k(copyOf);
        lb(k10);
        return k10;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<L0> xc(short[] sArr, l<? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$takeLastWhile$0");
        M.p(predicate, "predicate");
        for (int Pe2 = C14960A.Pe(sArr); -1 < Pe2; Pe2--) {
            if (!predicate.invoke(L0.b(M0.r(sArr, Pe2))).booleanValue()) {
                return L1(sArr, Pe2 + 1);
            }
        }
        return S.a6(M0.b(sArr));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<Z<F0, F0>> xd(@NotNull long[] jArr, @NotNull long[] jArr2) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$zip$0");
        M.p(jArr2, "$v$c$kotlin-ULongArray$-other$0");
        int min = Math.min(G0.t(jArr), G0.t(jArr2));
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(v0.a(F0.b(G0.r(jArr, i10)), F0.b(G0.r(jArr2, i10))));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super B0, ? super V>> M y0(int[] iArr, M destination, l<? super B0, ? extends V> valueSelector) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$associateWithTo$0");
        M.p(destination, "destination");
        M.p(valueSelector, "valueSelector");
        int v10 = C0.v(iArr);
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            destination.put(B0.e(t10), valueSelector.invoke(B0.e(t10)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final short[] y1(short[] sArr, int i10) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$copyOf$0");
        short[] copyOf = Arrays.copyOf(sArr, i10);
        M.o(copyOf, "copyOf(...)");
        return M0.k(copyOf);
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super B0>> C y2(int[] iArr, C destination, p<? super Integer, ? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$filterIndexedTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            int t10 = C0.t(iArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), B0.e(t10)).booleanValue()) {
                destination.add(B0.e(t10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C y3(long[] jArr, C destination, l<? super F0, ? extends Iterable<? extends R>> transform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$flatMapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            pf.M.t0(destination, transform.invoke(F0.b(G0.r(jArr, i10))));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> Map<K, List<V>> y4(long[] jArr, l<? super F0, ? extends K> keySelector, l<? super F0, ? extends V> valueTransform) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            K invoke = keySelector.invoke(F0.b(r10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(F0.b(r10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> y5(byte[] bArr, p<? super Integer, ? super x0, ? extends R> transform) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$mapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(y0.t(bArr));
        int t10 = y0.t(bArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), x0.b(y0.r(bArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final B0 y6(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$maxOrNull$0");
        if (C0.z(iArr)) {
            return null;
        }
        int t10 = C0.t(iArr, 0);
        int Me2 = C14960A.Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                int t11 = C0.t(iArr, i10);
                if (Integer.compareUnsigned(t10, t11) < 0) {
                    t10 = t11;
                }
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return B0.e(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R y7(long[] jArr, Comparator<? super R> comparator, l<? super F0, ? extends R> selector) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$minOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (G0.w(jArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(F0.b(G0.r(jArr, 0)));
        int Ne2 = C14960A.Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(F0.b(G0.r(jArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final long y8(long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$random$0");
        return x8(jArr, Tf.f.f24956b);
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> y9(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$reversed$0");
        if (C0.z(iArr)) {
            return H.J();
        }
        List<B0> d62 = S.d6(C0.k(iArr));
        O.t1(d62);
        return d62;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @Nullable
    public static final F0 ya(@NotNull long[] jArr) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$singleOrNull$0");
        if (G0.t(jArr) == 1) {
            return F0.b(G0.r(jArr, 0));
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<B0> yb(@NotNull int[] iArr) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$sortedDescending$0");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        M.o(copyOf, "copyOf(...)");
        int[] m10 = C0.m(copyOf);
        Sa(m10);
        return y9(m10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<x0> yc(byte[] bArr, l<? super x0, Boolean> predicate) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$takeWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            if (!predicate.invoke(x0.b(r10)).booleanValue()) {
                break;
            }
            arrayList.add(x0.b(r10));
        }
        return arrayList;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super x0, ? super V>> M z0(byte[] bArr, M destination, l<? super x0, ? extends V> valueSelector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$associateWithTo$0");
        M.p(destination, "destination");
        M.p(valueSelector, "valueSelector");
        int t10 = y0.t(bArr);
        for (int i10 = 0; i10 < t10; i10++) {
            byte r10 = y0.r(bArr, i10);
            destination.put(x0.b(r10), valueSelector.invoke(x0.b(r10)));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final int[] z1(int[] iArr, int i10) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$copyOf$0");
        int[] copyOf = Arrays.copyOf(iArr, i10);
        M.o(copyOf, "copyOf(...)");
        return C0.m(copyOf);
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <C extends Collection<? super L0>> C z2(short[] sArr, C destination, p<? super Integer, ? super L0, Boolean> predicate) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$filterIndexedTo$0");
        M.p(destination, "destination");
        M.p(predicate, "predicate");
        int t10 = M0.t(sArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < t10) {
            short r10 = M0.r(sArr, i10);
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), L0.b(r10)).booleanValue()) {
                destination.add(L0.b(r10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @InterfaceC14443y
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    public static final <R, C extends Collection<? super R>> C z3(short[] sArr, C destination, l<? super L0, ? extends Iterable<? extends R>> transform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$flatMapTo$0");
        M.p(destination, "destination");
        M.p(transform, "transform");
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            pf.M.t0(destination, transform.invoke(L0.b(M0.r(sArr, i10))));
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <K, V> Map<K, List<V>> z4(short[] sArr, l<? super L0, ? extends K> keySelector, l<? super L0, ? extends V> valueTransform) {
        M.p(sArr, "$v$c$kotlin-UShortArray$-$this$groupBy$0");
        M.p(keySelector, "keySelector");
        M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int t10 = M0.t(sArr);
        for (int i10 = 0; i10 < t10; i10++) {
            short r10 = M0.r(sArr, i10);
            K invoke = keySelector.invoke(L0.b(r10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(L0.b(r10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final <R> List<R> z5(int[] iArr, p<? super Integer, ? super B0, ? extends R> transform) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$mapIndexed$0");
        M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(C0.v(iArr));
        int v10 = C0.v(iArr);
        int i10 = 0;
        int i11 = 0;
        while (i10 < v10) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), B0.e(C0.t(iArr, i10))));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final x0 z6(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$maxOrNull$0");
        if (y0.w(bArr)) {
            return null;
        }
        byte r10 = y0.r(bArr, 0);
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte r11 = y0.r(bArr, i10);
                if (M.t(r10 & 255, r11 & 255) < 0) {
                    r10 = r11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return x0.b(r10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Y
    @InterfaceC14443y
    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R z7(byte[] bArr, Comparator<? super R> comparator, l<? super x0, ? extends R> selector) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$minOfWithOrNull$0");
        M.p(comparator, "comparator");
        M.p(selector, "selector");
        if (y0.w(bArr)) {
            return null;
        }
        Object obj = (R) selector.invoke(x0.b(y0.r(bArr, 0)));
        int Ie2 = C14960A.Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(x0.b(y0.r(bArr, i10)));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final byte z8(@NotNull byte[] bArr, @NotNull Tf.f random) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$random$0");
        M.p(random, "random");
        if (y0.w(bArr)) {
            throw new NoSuchElementException("Array is empty.");
        }
        return y0.r(bArr, random.m(y0.t(bArr)));
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> z9(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$reversed$0");
        if (y0.w(bArr)) {
            return H.J();
        }
        List<x0> d62 = S.d6(y0.b(bArr));
        O.t1(d62);
        return d62;
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final B0 za(int[] iArr, l<? super B0, Boolean> predicate) {
        M.p(iArr, "$v$c$kotlin-UIntArray$-$this$singleOrNull$0");
        M.p(predicate, "predicate");
        int v10 = C0.v(iArr);
        B0 b02 = null;
        boolean z10 = false;
        for (int i10 = 0; i10 < v10; i10++) {
            int t10 = C0.t(iArr, i10);
            if (predicate.invoke(B0.e(t10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                b02 = B0.e(t10);
                z10 = true;
            }
        }
        if (z10) {
            return b02;
        }
        return null;
    }

    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final List<x0> zb(@NotNull byte[] bArr) {
        M.p(bArr, "$v$c$kotlin-UByteArray$-$this$sortedDescending$0");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        M.o(copyOf, "copyOf(...)");
        byte[] k10 = y0.k(copyOf);
        Za(k10);
        return z9(k10);
    }

    @Ef.f
    @InterfaceC14443y
    @InterfaceC14422l0(version = "1.3")
    public static final List<F0> zc(long[] jArr, l<? super F0, Boolean> predicate) {
        M.p(jArr, "$v$c$kotlin-ULongArray$-$this$takeWhile$0");
        M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int t10 = G0.t(jArr);
        for (int i10 = 0; i10 < t10; i10++) {
            long r10 = G0.r(jArr, i10);
            if (!predicate.invoke(F0.b(r10)).booleanValue()) {
                break;
            }
            arrayList.add(F0.b(r10));
        }
        return arrayList;
    }
}
