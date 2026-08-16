package pf;

import Xf.InterfaceC3312m;
import ag.C3643z;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.C14012i;
import kotlin.jvm.internal.C14013j;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import nf.InterfaceC14441w;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tf.C15420g;

@kotlin.jvm.internal.t0({"SMAP\n_Arrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,25882:1\n13275#1,2:25883\n13285#1,2:25885\n1401#1,2:25887\n1409#1,2:25889\n1417#1,2:25891\n1425#1,2:25893\n1433#1,2:25895\n1441#1,2:25897\n1449#1,2:25899\n1457#1,2:25901\n1465#1,2:25903\n2462#1,5:25905\n2475#1,5:25910\n2488#1,5:25915\n2501#1,5:25920\n2514#1,5:25925\n2527#1,5:25930\n2540#1,5:25935\n2553#1,5:25940\n2566#1,5:25945\n4474#1,2:25951\n4485#1,2:25953\n4496#1,2:25955\n4507#1,2:25957\n4518#1,2:25959\n4529#1,2:25961\n4540#1,2:25963\n4551#1,2:25965\n4562#1,2:25967\n4121#1:25969\n14125#1,2:25970\n4122#1,2:25972\n14127#1:25974\n4124#1:25975\n4136#1:25976\n14135#1,2:25977\n4137#1,2:25979\n14137#1:25981\n4139#1:25982\n4151#1:25983\n14145#1,2:25984\n4152#1,2:25986\n14147#1:25988\n4154#1:25989\n4166#1:25990\n14155#1,2:25991\n4167#1,2:25993\n14157#1:25995\n4169#1:25996\n4181#1:25997\n14165#1,2:25998\n4182#1,2:26000\n14167#1:26002\n4184#1:26003\n4196#1:26004\n14175#1,2:26005\n4197#1,2:26007\n14177#1:26009\n4199#1:26010\n4211#1:26011\n14185#1,2:26012\n4212#1,2:26014\n14187#1:26016\n4214#1:26017\n4226#1:26018\n14195#1,2:26019\n4227#1,2:26021\n14197#1:26023\n4229#1:26024\n4241#1:26025\n14205#1,2:26026\n4242#1,2:26028\n14207#1:26030\n4244#1:26031\n14125#1,3:26032\n14135#1,3:26035\n14145#1,3:26038\n14155#1,3:26041\n14165#1,3:26044\n14175#1,3:26047\n14185#1,3:26050\n14195#1,3:26053\n14205#1,3:26056\n4263#1,2:26059\n4375#1,2:26061\n4386#1,2:26063\n4397#1,2:26065\n4408#1,2:26067\n4419#1,2:26069\n4430#1,2:26071\n4441#1,2:26073\n4452#1,2:26075\n4463#1,2:26077\n9664#1,4:26079\n9680#1,4:26083\n9696#1,4:26087\n9712#1,4:26091\n9728#1,4:26095\n9744#1,4:26099\n9760#1,4:26103\n9776#1,4:26107\n9792#1,4:26111\n9359#1,4:26115\n9376#1,4:26119\n9393#1,4:26123\n9410#1,4:26127\n9427#1,4:26131\n9444#1,4:26135\n9461#1,4:26139\n9478#1,4:26143\n9495#1,4:26147\n9512#1,4:26151\n9529#1,4:26155\n9546#1,4:26159\n9563#1,4:26163\n9580#1,4:26167\n9597#1,4:26171\n9614#1,4:26175\n9631#1,4:26179\n9648#1,4:26183\n9961#1,4:26187\n11007#1,5:26191\n11019#1,5:26196\n11031#1,5:26201\n11043#1,5:26206\n11055#1,5:26211\n11067#1,5:26216\n11079#1,5:26221\n11091#1,5:26226\n11103#1,5:26231\n11119#1,5:26236\n11361#1,3:26241\n11364#1,3:26251\n11379#1,3:26254\n11382#1,3:26264\n11397#1,3:26267\n11400#1,3:26277\n11415#1,3:26280\n11418#1,3:26290\n11433#1,3:26293\n11436#1,3:26303\n11451#1,3:26306\n11454#1,3:26316\n11469#1,3:26319\n11472#1,3:26329\n11487#1,3:26332\n11490#1,3:26342\n11505#1,3:26345\n11508#1,3:26355\n11524#1,3:26358\n11527#1,3:26368\n11543#1,3:26371\n11546#1,3:26381\n11562#1,3:26384\n11565#1,3:26394\n11581#1,3:26397\n11584#1,3:26407\n11600#1,3:26410\n11603#1,3:26420\n11619#1,3:26423\n11622#1,3:26433\n11638#1,3:26436\n11641#1,3:26446\n11657#1,3:26449\n11660#1,3:26459\n11676#1,3:26462\n11679#1,3:26472\n12052#1,3:26601\n12063#1,3:26604\n12074#1,3:26607\n12085#1,3:26610\n12096#1,3:26613\n12107#1,3:26616\n12118#1,3:26619\n12129#1,3:26622\n12140#1,3:26625\n11908#1,4:26628\n11922#1,4:26632\n11936#1,4:26636\n11950#1,4:26640\n11964#1,4:26644\n11978#1,4:26648\n11992#1,4:26652\n12006#1,4:26656\n12020#1,4:26660\n11896#1:26664\n14125#1,2:26665\n14127#1:26668\n11897#1:26669\n14125#1,3:26670\n12042#1:26673\n14060#1:26674\n14061#1:26676\n12043#1:26677\n14060#1,2:26678\n14125#1,3:26680\n14135#1,3:26683\n14145#1,3:26686\n14155#1,3:26689\n14165#1,3:26692\n14175#1,3:26695\n14185#1,3:26698\n14195#1,3:26701\n14205#1,3:26704\n22128#1,2:26707\n22130#1,6:26710\n22344#1,2:26716\n22346#1,6:26719\n24467#1,6:26725\n24483#1,6:26731\n24499#1,6:26737\n24515#1,6:26743\n24531#1,6:26749\n24547#1,6:26755\n24563#1,6:26761\n24579#1,6:26767\n24595#1,6:26773\n24701#1,8:26779\n24719#1,8:26787\n24737#1,8:26795\n24755#1,8:26803\n24773#1,8:26811\n24791#1,8:26819\n24809#1,8:26827\n24827#1,8:26835\n24845#1,8:26843\n24943#1,6:26851\n24959#1,6:26857\n24975#1,6:26863\n24991#1,6:26869\n25007#1,6:26875\n25023#1,6:26881\n25039#1,6:26887\n25055#1,6:26893\n1#2:25950\n1#2:26667\n1#2:26675\n1#2:26709\n1#2:26718\n383#3,7:26244\n383#3,7:26257\n383#3,7:26270\n383#3,7:26283\n383#3,7:26296\n383#3,7:26309\n383#3,7:26322\n383#3,7:26335\n383#3,7:26348\n383#3,7:26361\n383#3,7:26374\n383#3,7:26387\n383#3,7:26400\n383#3,7:26413\n383#3,7:26426\n383#3,7:26439\n383#3,7:26452\n383#3,7:26465\n383#3,7:26475\n383#3,7:26482\n383#3,7:26489\n383#3,7:26496\n383#3,7:26503\n383#3,7:26510\n383#3,7:26517\n383#3,7:26524\n383#3,7:26531\n383#3,7:26538\n383#3,7:26545\n383#3,7:26552\n383#3,7:26559\n383#3,7:26566\n383#3,7:26573\n383#3,7:26580\n383#3,7:26587\n383#3,7:26594\n*S KotlinDebug\n*F\n+ 1 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n648#1:25883,2\n657#1:25885,2\n951#1:25887,2\n961#1:25889,2\n971#1:25891,2\n981#1:25893,2\n991#1:25895,2\n1001#1:25897,2\n1011#1:25899,2\n1021#1:25901,2\n1031#1:25903,2\n1041#1:25905,5\n1051#1:25910,5\n1061#1:25915,5\n1071#1:25920,5\n1081#1:25925,5\n1091#1:25930,5\n1101#1:25935,5\n1111#1:25940,5\n1121#1:25945,5\n3938#1:25951,2\n3947#1:25953,2\n3956#1:25955,2\n3965#1:25957,2\n3974#1:25959,2\n3983#1:25961,2\n3992#1:25963,2\n4001#1:25965,2\n4010#1:25967,2\n4021#1:25969\n4021#1:25970,2\n4021#1:25972,2\n4021#1:25974\n4021#1:25975\n4032#1:25976\n4032#1:25977,2\n4032#1:25979,2\n4032#1:25981\n4032#1:25982\n4043#1:25983\n4043#1:25984,2\n4043#1:25986,2\n4043#1:25988\n4043#1:25989\n4054#1:25990\n4054#1:25991,2\n4054#1:25993,2\n4054#1:25995\n4054#1:25996\n4065#1:25997\n4065#1:25998,2\n4065#1:26000,2\n4065#1:26002\n4065#1:26003\n4076#1:26004\n4076#1:26005,2\n4076#1:26007,2\n4076#1:26009\n4076#1:26010\n4087#1:26011\n4087#1:26012,2\n4087#1:26014,2\n4087#1:26016\n4087#1:26017\n4098#1:26018\n4098#1:26019,2\n4098#1:26021,2\n4098#1:26023\n4098#1:26024\n4109#1:26025\n4109#1:26026,2\n4109#1:26028,2\n4109#1:26030\n4109#1:26031\n4121#1:26032,3\n4136#1:26035,3\n4151#1:26038,3\n4166#1:26041,3\n4181#1:26044,3\n4196#1:26047,3\n4211#1:26050,3\n4226#1:26053,3\n4241#1:26056,3\n4253#1:26059,2\n4273#1:26061,2\n4282#1:26063,2\n4291#1:26065,2\n4300#1:26067,2\n4309#1:26069,2\n4318#1:26071,2\n4327#1:26073,2\n4336#1:26075,2\n4345#1:26077,2\n8964#1:26079,4\n8979#1:26083,4\n8994#1:26087,4\n9009#1:26091,4\n9024#1:26095,4\n9039#1:26099,4\n9054#1:26103,4\n9069#1:26107,4\n9084#1:26111,4\n9099#1:26115,4\n9114#1:26119,4\n9129#1:26123,4\n9144#1:26127,4\n9159#1:26131,4\n9174#1:26135,4\n9189#1:26139,4\n9204#1:26143,4\n9219#1:26147,4\n9233#1:26151,4\n9247#1:26155,4\n9261#1:26159,4\n9275#1:26163,4\n9289#1:26167,4\n9303#1:26171,4\n9317#1:26175,4\n9331#1:26179,4\n9345#1:26183,4\n9811#1:26187,4\n10574#1:26191,5\n10583#1:26196,5\n10592#1:26201,5\n10601#1:26206,5\n10610#1:26211,5\n10619#1:26216,5\n10628#1:26221,5\n10637#1:26226,5\n10646#1:26231,5\n10659#1:26236,5\n11135#1:26241,3\n11135#1:26251,3\n11147#1:26254,3\n11147#1:26264,3\n11159#1:26267,3\n11159#1:26277,3\n11171#1:26280,3\n11171#1:26290,3\n11183#1:26293,3\n11183#1:26303,3\n11195#1:26306,3\n11195#1:26316,3\n11207#1:26319,3\n11207#1:26329,3\n11219#1:26332,3\n11219#1:26342,3\n11231#1:26345,3\n11231#1:26355,3\n11244#1:26358,3\n11244#1:26368,3\n11257#1:26371,3\n11257#1:26381,3\n11270#1:26384,3\n11270#1:26394,3\n11283#1:26397,3\n11283#1:26407,3\n11296#1:26410,3\n11296#1:26420,3\n11309#1:26423,3\n11309#1:26433,3\n11322#1:26436,3\n11322#1:26446,3\n11335#1:26449,3\n11335#1:26459,3\n11348#1:26462,3\n11348#1:26472,3\n11705#1:26601,3\n11715#1:26604,3\n11725#1:26607,3\n11735#1:26610,3\n11745#1:26613,3\n11755#1:26616,3\n11765#1:26619,3\n11775#1:26622,3\n11785#1:26625,3\n11795#1:26628,4\n11805#1:26632,4\n11815#1:26636,4\n11825#1:26640,4\n11835#1:26644,4\n11845#1:26648,4\n11855#1:26652,4\n11865#1:26656,4\n11875#1:26660,4\n11885#1:26664\n11885#1:26665,2\n11885#1:26668\n11885#1:26669\n11896#1:26670,3\n12033#1:26673\n12033#1:26674\n12033#1:26676\n12033#1:26677\n12042#1:26678,2\n20414#1:26680,3\n20426#1:26683,3\n20438#1:26686,3\n20450#1:26689,3\n20462#1:26692,3\n20474#1:26695,3\n20486#1:26698,3\n20498#1:26701,3\n20510#1:26704,3\n22958#1:26707,2\n22958#1:26710,6\n23111#1:26716,2\n23111#1:26719,6\n24376#1:26725,6\n24386#1:26731,6\n24396#1:26737,6\n24406#1:26743,6\n24416#1:26749,6\n24426#1:26755,6\n24436#1:26761,6\n24446#1:26767,6\n24456#1:26773,6\n24610#1:26779,8\n24620#1:26787,8\n24630#1:26795,8\n24640#1:26803,8\n24650#1:26811,8\n24660#1:26819,8\n24670#1:26827,8\n24680#1:26835,8\n24690#1:26843,8\n24862#1:26851,6\n24872#1:26857,6\n24882#1:26863,6\n24892#1:26869,6\n24902#1:26875,6\n24912#1:26881,6\n24922#1:26887,6\n24932#1:26893,6\n11885#1:26667\n12033#1:26675\n22958#1:26709\n23111#1:26718\n11135#1:26244,7\n11147#1:26257,7\n11159#1:26270,7\n11171#1:26283,7\n11183#1:26296,7\n11195#1:26309,7\n11207#1:26322,7\n11219#1:26335,7\n11231#1:26348,7\n11244#1:26361,7\n11257#1:26374,7\n11270#1:26387,7\n11283#1:26400,7\n11296#1:26413,7\n11309#1:26426,7\n11322#1:26439,7\n11335#1:26452,7\n11348#1:26465,7\n11363#1:26475,7\n11381#1:26482,7\n11399#1:26489,7\n11417#1:26496,7\n11435#1:26503,7\n11453#1:26510,7\n11471#1:26517,7\n11489#1:26524,7\n11507#1:26531,7\n11526#1:26538,7\n11545#1:26545,7\n11564#1:26552,7\n11583#1:26559,7\n11602#1:26566,7\n11621#1:26573,7\n11640#1:26580,7\n11659#1:26587,7\n11678#1:26594,7\n*E\n"})
public class C14960A extends C14985q {

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25425#2:71\n*E\n"})
    public static final class a<T> implements Iterable<T>, Nf.a {

        public final Object[] f103779b;

        public a(Object[] objArr) {
            this.f103779b = objArr;
        }

        @Override
        public Iterator<T> iterator() {
            return C14012i.a(this.f103779b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25433#2:71\n*E\n"})
    public static final class b implements Iterable<Byte>, Nf.a {

        public final byte[] f103780b;

        public b(byte[] bArr) {
            this.f103780b = bArr;
        }

        @Override
        public Iterator<Byte> iterator() {
            return C14013j.b(this.f103780b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25441#2:71\n*E\n"})
    public static final class c implements Iterable<Short>, Nf.a {

        public final short[] f103781b;

        public c(short[] sArr) {
            this.f103781b = sArr;
        }

        @Override
        public Iterator<Short> iterator() {
            return C14013j.h(this.f103781b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25449#2:71\n*E\n"})
    public static final class d implements Iterable<Integer>, Nf.a {

        public final int[] f103782b;

        public d(int[] iArr) {
            this.f103782b = iArr;
        }

        @Override
        public Iterator<Integer> iterator() {
            return C14013j.f(this.f103782b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25457#2:71\n*E\n"})
    public static final class e implements Iterable<Long>, Nf.a {

        public final long[] f103783b;

        public e(long[] jArr) {
            this.f103783b = jArr;
        }

        @Override
        public Iterator<Long> iterator() {
            return C14013j.g(this.f103783b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25465#2:71\n*E\n"})
    public static final class f implements Iterable<Float>, Nf.a {

        public final float[] f103784b;

        public f(float[] fArr) {
            this.f103784b = fArr;
        }

        @Override
        public Iterator<Float> iterator() {
            return C14013j.e(this.f103784b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25473#2:71\n*E\n"})
    public static final class g implements Iterable<Double>, Nf.a {

        public final double[] f103785b;

        public g(double[] dArr) {
            this.f103785b = dArr;
        }

        @Override
        public Iterator<Double> iterator() {
            return C14013j.d(this.f103785b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25481#2:71\n*E\n"})
    public static final class h implements Iterable<Boolean>, Nf.a {

        public final boolean[] f103786b;

        public h(boolean[] zArr) {
            this.f103786b = zArr;
        }

        @Override
        public Iterator<Boolean> iterator() {
            return C14013j.a(this.f103786b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,70:1\n25489#2:71\n*E\n"})
    public static final class i implements Iterable<Character>, Nf.a {

        public final char[] f103787b;

        public i(char[] cArr) {
            this.f103787b = cArr;
        }

        @Override
        public Iterator<Character> iterator() {
            return C14013j.c(this.f103787b);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25499#2:731\n*E\n"})
    public static final class j<T> implements InterfaceC3312m<T> {

        public final Object[] f103788a;

        public j(Object[] objArr) {
            this.f103788a = objArr;
        }

        @Override
        public Iterator<T> iterator() {
            return C14012i.a(this.f103788a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25509#2:731\n*E\n"})
    public static final class k implements InterfaceC3312m<Byte> {

        public final byte[] f103789a;

        public k(byte[] bArr) {
            this.f103789a = bArr;
        }

        @Override
        public Iterator<Byte> iterator() {
            return C14013j.b(this.f103789a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25519#2:731\n*E\n"})
    public static final class l implements InterfaceC3312m<Short> {

        public final short[] f103790a;

        public l(short[] sArr) {
            this.f103790a = sArr;
        }

        @Override
        public Iterator<Short> iterator() {
            return C14013j.h(this.f103790a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25529#2:731\n*E\n"})
    public static final class m implements InterfaceC3312m<Integer> {

        public final int[] f103791a;

        public m(int[] iArr) {
            this.f103791a = iArr;
        }

        @Override
        public Iterator<Integer> iterator() {
            return C14013j.f(this.f103791a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25539#2:731\n*E\n"})
    public static final class n implements InterfaceC3312m<Long> {

        public final long[] f103792a;

        public n(long[] jArr) {
            this.f103792a = jArr;
        }

        @Override
        public Iterator<Long> iterator() {
            return C14013j.g(this.f103792a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25549#2:731\n*E\n"})
    public static final class o implements InterfaceC3312m<Float> {

        public final float[] f103793a;

        public o(float[] fArr) {
            this.f103793a = fArr;
        }

        @Override
        public Iterator<Float> iterator() {
            return C14013j.e(this.f103793a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25559#2:731\n*E\n"})
    public static final class p implements InterfaceC3312m<Double> {

        public final double[] f103794a;

        public p(double[] dArr) {
            this.f103794a = dArr;
        }

        @Override
        public Iterator<Double> iterator() {
            return C14013j.d(this.f103794a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25569#2:731\n*E\n"})
    public static final class q implements InterfaceC3312m<Boolean> {

        public final boolean[] f103795a;

        public q(boolean[] zArr) {
            this.f103795a = zArr;
        }

        @Override
        public Iterator<Boolean> iterator() {
            return C14013j.a(this.f103795a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,730:1\n25579#2:731\n*E\n"})
    public static final class r implements InterfaceC3312m<Character> {

        public final char[] f103796a;

        public r(char[] cArr) {
            this.f103796a = cArr;
        }

        @Override
        public Iterator<Character> iterator() {
            return C14013j.c(this.f103796a);
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\n_Arrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt$groupingBy$1\n*L\n1#1,25882:1\n*E\n"})
    public static final class s<K, T> implements Z<T, K> {

        public final T[] f103797a;

        public final Mf.l<T, K> f103798b;

        /* JADX WARN: Multi-variable type inference failed */
        public s(T[] tArr, Mf.l<? super T, ? extends K> lVar) {
            this.f103797a = tArr;
            this.f103798b = lVar;
        }

        @Override
        public K a(T t10) {
            return this.f103798b.invoke(t10);
        }

        @Override
        public Iterator<T> b() {
            return C14012i.a(this.f103797a);
        }
    }

    public static boolean A5(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return !(sArr.length == 0);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M A6(@NotNull char[] cArr, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (char c10 : cArr) {
            destination.put(keySelector.invoke(Character.valueOf(c10)), valueTransform.invoke(Character.valueOf(c10)));
        }
        return destination;
    }

    @Lf.j(name = "averageOfLong")
    public static final double A7(@NotNull Long[] lArr) {
        kotlin.jvm.internal.M.p(lArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (Long l10 : lArr) {
            d10 += l10.longValue();
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    public static boolean A8(@NotNull long[] jArr, long j10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return Zf(jArr, j10) >= 0;
    }

    @NotNull
    public static final List<Float> A9(@NotNull float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (i10 >= 0) {
            return Zx(fArr, Vf.u.w(fArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R, V> List<V> AA(@NotNull double[] dArr, @NotNull R[] other, @NotNull Mf.p<? super Double, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(dArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Double.valueOf(dArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Character> Aa(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                arrayList.add(Character.valueOf(c10));
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Integer>> C Ab(@NotNull int[] iArr, @NotNull C destination, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                destination.add(Integer.valueOf(i10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Float Ac(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return Float.valueOf(f10);
            }
        }
        return null;
    }

    public static final <R> R Ad(@NotNull float[] fArr, R r10, @NotNull Mf.p<? super R, ? super Float, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (float f10 : fArr) {
            r10 = operation.invoke(r10, Float.valueOf(f10));
        }
        return r10;
    }

    @NotNull
    public static final Vf.l Ae(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return new Vf.l(0, Je(cArr));
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> Af(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends K> keySelector, @NotNull Mf.l<? super Boolean, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (boolean z10 : zArr) {
            K invoke = keySelector.invoke(Boolean.valueOf(z10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Boolean.valueOf(z10)));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Set<Long> Ag(@NotNull long[] jArr, @NotNull Iterable<Long> other) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Long> uz = uz(jArr);
        M.U0(uz, other);
        return uz;
    }

    public static String Ah(float[] fArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return rh(fArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <R> List<R> Ai(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(cArr.length);
        for (char c10 : cArr) {
            arrayList.add(transform.invoke(Character.valueOf(c10)));
        }
        return arrayList;
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> int Aj(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        if (Me2 == 0) {
            return i10;
        }
        R invoke = selector.invoke(Integer.valueOf(i10));
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                R invoke2 = selector.invoke(Integer.valueOf(i12));
                if (invoke.compareTo(invoke2) < 0) {
                    i10 = i12;
                    invoke = invoke2;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Ak(double[] dArr, Mf.l<? super Double, Float> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Double.valueOf(dArr[0])).floatValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Double.valueOf(dArr[i10])).floatValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T Al(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (comparator.compare(t10, t11) < 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Am(long[] jArr, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(Long.valueOf(jArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double An(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = Math.min(d10, dArr[i10]);
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    public static final boolean Ao(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character Ap(@NotNull char[] cArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (cArr.length == 0) {
            return null;
        }
        return Character.valueOf(cArr[random.m(cArr.length)]);
    }

    public static final float Aq(@NotNull float[] fArr, @NotNull Mf.p<? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Le2 = Le(fArr);
        if (Le2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        float f10 = fArr[Le2];
        for (int i10 = Le2 - 1; i10 >= 0; i10--) {
            f10 = operation.invoke(Float.valueOf(fArr[i10]), Float.valueOf(f10)).floatValue();
        }
        return f10;
    }

    @NotNull
    public static final List<Byte> Ar(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return H.J();
        }
        List<Byte> gz = gz(bArr);
        O.t1(gz);
        return gz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Short> As(short[] sArr, Mf.q<? super Integer, ? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return H.J();
        }
        short s10 = sArr[0];
        ArrayList arrayList = new ArrayList(sArr.length);
        arrayList.add(Short.valueOf(s10));
        int length = sArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            s10 = operation.n(Integer.valueOf(i10), Short.valueOf(s10), Short.valueOf(sArr[i10])).shortValue();
            arrayList.add(Short.valueOf(s10));
        }
        return arrayList;
    }

    public static final <T> T At(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        boolean z10 = false;
        for (T t11 : tArr) {
            if (predicate.invoke(t11).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static long[] Au(@NotNull long[] jArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        long[] jArr2 = new long[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            jArr2[i10] = jArr[it.next().intValue()];
            i10++;
        }
        return jArr2;
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Double> Av(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return aw(dArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int Aw(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Integer> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += selector.invoke(Integer.valueOf(i11)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int Ax(long[] jArr, Mf.l<? super Long, nf.B0> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (long j10 : jArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Long.valueOf(j10)).q0());
        }
        return o10;
    }

    @NotNull
    public static final char[] Ay(@NotNull Character[] chArr) {
        kotlin.jvm.internal.M.p(chArr, "<this>");
        int length = chArr.length;
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = chArr[i10].charValue();
        }
        return cArr;
    }

    @NotNull
    public static final Set<Double> Az(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length;
        return length != 0 ? length != 1 ? (Set) Dy(dArr, new LinkedHashSet(n0.j(dArr.length))) : y0.f(Double.valueOf(dArr[0])) : z0.k();
    }

    public static final boolean B5(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Double>> M B6(@NotNull double[] dArr, @NotNull M destination, @NotNull Mf.l<? super Double, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (double d10 : dArr) {
            destination.put(keySelector.invoke(Double.valueOf(d10)), Double.valueOf(d10));
        }
        return destination;
    }

    @Lf.j(name = "averageOfShort")
    public static final double B7(@NotNull Short[] shArr) {
        kotlin.jvm.internal.M.p(shArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (Short sh2 : shArr) {
            d10 += sh2.shortValue();
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    public static <T> boolean B8(@NotNull T[] tArr, T t10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return ag(tArr, t10) >= 0;
    }

    @NotNull
    public static final List<Integer> B9(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (i10 >= 0) {
            return ay(iArr, Vf.u.w(iArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<nf.Z<Float, R>> BA(@NotNull float[] fArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = fArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Float.valueOf(fArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final List<Double> Ba(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                arrayList.add(Double.valueOf(d10));
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Long>> C Bb(@NotNull long[] jArr, @NotNull C destination, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                destination.add(Long.valueOf(j10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Integer Bc(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        return Integer.valueOf(iArr[0]);
    }

    public static final <R> R Bd(@NotNull int[] iArr, R r10, @NotNull Mf.p<? super R, ? super Integer, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int i10 : iArr) {
            r10 = operation.invoke(r10, Integer.valueOf(i10));
        }
        return r10;
    }

    @NotNull
    public static final Vf.l Be(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return new Vf.l(0, Ke(dArr));
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Byte>>> M Bf(@NotNull byte[] bArr, @NotNull M destination, @NotNull Mf.l<? super Byte, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (byte b10 : bArr) {
            K invoke = keySelector.invoke(Byte.valueOf(b10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Byte.valueOf(b10));
        }
        return destination;
    }

    @NotNull
    public static final <T> Set<T> Bg(@NotNull T[] tArr, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Collection v02 = M.v0(other);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (T t10 : tArr) {
            if (v02.contains(t10)) {
                linkedHashSet.add(t10);
            }
        }
        return linkedHashSet;
    }

    public static String Bh(int[] iArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return sh(iArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <R> List<R> Bi(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d10 : dArr) {
            arrayList.add(transform.invoke(Double.valueOf(d10)));
        }
        return arrayList;
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> long Bj(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        if (Ne2 == 0) {
            return j10;
        }
        R invoke = selector.invoke(Long.valueOf(j10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                R invoke2 = selector.invoke(Long.valueOf(j11));
                if (invoke.compareTo(invoke2) < 0) {
                    j10 = j11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Bk(float[] fArr, Mf.l<? super Float, Float> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Float.valueOf(fArr[0])).floatValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Float.valueOf(fArr[i10])).floatValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short Bl(@NotNull short[] sArr, @NotNull Comparator<? super Short> comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (comparator.compare(Short.valueOf(s10), Short.valueOf(s11)) < 0) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R Bm(T[] tArr, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                R invoke2 = selector.invoke(tArr[i10]);
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double Bn(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return null;
        }
        double doubleValue = dArr[0].doubleValue();
        int Oe2 = Oe(dArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, dArr[i10].doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    public static final boolean Bo(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Double Bp(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return Cp(dArr, Tf.f.f24956b);
    }

    public static final int Bq(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Me2 = Me(iArr);
        if (Me2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int i10 = iArr[Me2];
        for (int i11 = Me2 - 1; i11 >= 0; i11--) {
            i10 = operation.invoke(Integer.valueOf(iArr[i11]), Integer.valueOf(i10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Character> Br(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return H.J();
        }
        List<Character> hz = hz(cArr);
        O.t1(hz);
        return hz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Boolean> Bs(boolean[] zArr, Mf.q<? super Integer, ? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return H.J();
        }
        boolean z10 = zArr[0];
        ArrayList arrayList = new ArrayList(zArr.length);
        arrayList.add(Boolean.valueOf(z10));
        int length = zArr.length;
        int i10 = 1;
        while (i10 < length) {
            Boolean n10 = operation.n(Integer.valueOf(i10), Boolean.valueOf(z10), Boolean.valueOf(zArr[i10]));
            boolean booleanValue = n10.booleanValue();
            arrayList.add(n10);
            i10++;
            z10 = booleanValue;
        }
        return arrayList;
    }

    public static short Bt(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = sArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return sArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static final <T> T[] Bu(@NotNull T[] tArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? (T[]) C14985q.l1(tArr, 0, 0) : (T[]) C14985q.l1(tArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Float> Bv(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return bw(fArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int Bw(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Integer> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (long j10 : jArr) {
            i10 += selector.invoke(Long.valueOf(j10)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final <T> int Bx(T[] tArr, Mf.l<? super T, nf.B0> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (T t10 : tArr) {
            o10 = nf.B0.o(o10 + selector.invoke(t10).q0());
        }
        return o10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Byte>> C By(@NotNull byte[] bArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (byte b10 : bArr) {
            destination.add(Byte.valueOf(b10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Float> Bz(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length;
        return length != 0 ? length != 1 ? (Set) Ey(fArr, new LinkedHashSet(n0.j(fArr.length))) : y0.f(Float.valueOf(fArr[0])) : z0.k();
    }

    public static final boolean C5(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return !(zArr.length == 0);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M C6(@NotNull double[] dArr, @NotNull M destination, @NotNull Mf.l<? super Double, ? extends K> keySelector, @NotNull Mf.l<? super Double, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (double d10 : dArr) {
            destination.put(keySelector.invoke(Double.valueOf(d10)), valueTransform.invoke(Double.valueOf(d10)));
        }
        return destination;
    }

    @Ef.f
    public static final byte C7(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr[0];
    }

    public static boolean C8(@NotNull short[] sArr, short s10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return bg(sArr, s10) >= 0;
    }

    @NotNull
    public static final List<Long> C9(@NotNull long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (i10 >= 0) {
            return cy(jArr, Vf.u.w(jArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R, V> List<V> CA(@NotNull float[] fArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Float, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = fArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Float.valueOf(fArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final List<Float> Ca(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                arrayList.add(Float.valueOf(f10));
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C Cb(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Nullable
    public static final Integer Cc(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                return Integer.valueOf(i10);
            }
        }
        return null;
    }

    public static final <R> R Cd(@NotNull long[] jArr, R r10, @NotNull Mf.p<? super R, ? super Long, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (long j10 : jArr) {
            r10 = operation.invoke(r10, Long.valueOf(j10));
        }
        return r10;
    }

    @NotNull
    public static final Vf.l Ce(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return new Vf.l(0, Le(fArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Cf(@NotNull byte[] bArr, @NotNull M destination, @NotNull Mf.l<? super Byte, ? extends K> keySelector, @NotNull Mf.l<? super Byte, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (byte b10 : bArr) {
            K invoke = keySelector.invoke(Byte.valueOf(b10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Byte.valueOf(b10)));
        }
        return destination;
    }

    @NotNull
    public static final Set<Short> Cg(@NotNull short[] sArr, @NotNull Iterable<Short> other) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Short> wz = wz(sArr);
        M.U0(wz, other);
        return wz;
    }

    public static String Ch(long[] jArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return th(jArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <R> List<R> Ci(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f10 : fArr) {
            arrayList.add(transform.invoke(Float.valueOf(f10)));
        }
        return arrayList;
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T, R extends Comparable<? super R>> T Cj(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        if (Oe2 == 0) {
            return t10;
        }
        R invoke = selector.invoke(t10);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                R invoke2 = selector.invoke(t11);
                if (invoke.compareTo(invoke2) < 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Ck(int[] iArr, Mf.l<? super Integer, Float> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Integer.valueOf(iArr[0])).floatValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Integer.valueOf(iArr[i10])).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final byte Cl(@NotNull byte[] bArr, @NotNull Comparator<? super Byte> comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (comparator.compare(Byte.valueOf(b10), Byte.valueOf(b11)) < 0) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Cm(short[] sArr, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(Short.valueOf(sArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float Cn(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = Math.min(f10, fArr[i10]);
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final byte[] Co(byte[] bArr, Mf.l<? super Byte, P0> action) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (byte b10 : bArr) {
            action.invoke(Byte.valueOf(b10));
        }
        return bArr;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double Cp(@NotNull double[] dArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (dArr.length == 0) {
            return null;
        }
        return Double.valueOf(dArr[random.m(dArr.length)]);
    }

    public static final long Cq(@NotNull long[] jArr, @NotNull Mf.p<? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ne2 = Ne(jArr);
        if (Ne2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long j10 = jArr[Ne2];
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            j10 = operation.invoke(Long.valueOf(jArr[i10]), Long.valueOf(j10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Double> Cr(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return H.J();
        }
        List<Double> iz = iz(dArr);
        O.t1(iz);
        return iz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Cs(byte[] bArr, R r10, Mf.p<? super R, ? super Byte, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(bArr.length + 1);
        arrayList.add(r10);
        for (byte b10 : bArr) {
            r10 = operation.invoke(r10, Byte.valueOf(b10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    public static final short Ct(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Short sh2 = null;
        boolean z10 = false;
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                sh2 = Short.valueOf(s10);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(sh2, "null cannot be cast to non-null type kotlin.Short");
        return sh2.shortValue();
    }

    @NotNull
    public static final <T> T[] Cu(@NotNull T[] tArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        T[] tArr2 = (T[]) C14983o.a(tArr, indices.size());
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            tArr2[i10] = tArr[it.next().intValue()];
            i10++;
        }
        return tArr2;
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Integer> Cv(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return cw(iArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final <T> int Cw(@NotNull T[] tArr, @NotNull Mf.l<? super T, Integer> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (T t10 : tArr) {
            i10 += selector.invoke(t10).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int Cx(short[] sArr, Mf.l<? super Short, nf.B0> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (short s10 : sArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Short.valueOf(s10)).q0());
        }
        return o10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Character>> C Cy(@NotNull char[] cArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (char c10 : cArr) {
            destination.add(Character.valueOf(c10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Integer> Cz(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = iArr.length;
        return length != 0 ? length != 1 ? (Set) Fy(iArr, new LinkedHashSet(n0.j(iArr.length))) : y0.f(Integer.valueOf(iArr[0])) : z0.k();
    }

    public static final boolean D5(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Float>> M D6(@NotNull float[] fArr, @NotNull M destination, @NotNull Mf.l<? super Float, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (float f10 : fArr) {
            destination.put(keySelector.invoke(Float.valueOf(f10)), Float.valueOf(f10));
        }
        return destination;
    }

    @Ef.f
    public static final char D7(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr[0];
    }

    public static final boolean D8(@NotNull boolean[] zArr, boolean z10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return cg(zArr, z10) >= 0;
    }

    @NotNull
    public static final <T> List<T> D9(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (i10 >= 0) {
            return dy(tArr, Vf.u.w(tArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final List<nf.Z<Float, Float>> DA(@NotNull float[] fArr, @NotNull float[] other) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(fArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Float.valueOf(fArr[i10]), Float.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Integer> Da(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Short>> C Db(@NotNull short[] sArr, @NotNull C destination, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                destination.add(Short.valueOf(s10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Long Dc(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return null;
        }
        return Long.valueOf(jArr[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> R Dd(@NotNull T[] tArr, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (A.c cVar : tArr) {
            r10 = operation.invoke(r10, cVar);
        }
        return r10;
    }

    @NotNull
    public static Vf.l De(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return new Vf.l(0, Me(iArr));
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Character>>> M Df(@NotNull char[] cArr, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (char c10 : cArr) {
            K invoke = keySelector.invoke(Character.valueOf(c10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Character.valueOf(c10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Boolean> Dg(@NotNull boolean[] zArr, @NotNull Iterable<Boolean> other) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Boolean> xz = xz(zArr);
        M.U0(xz, other);
        return xz;
    }

    public static String Dh(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return uh(objArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <R> List<R> Di(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(transform.invoke(Integer.valueOf(i10)));
        }
        return arrayList;
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> short Dj(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        if (Pe2 == 0) {
            return s10;
        }
        R invoke = selector.invoke(Short.valueOf(s10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                R invoke2 = selector.invoke(Short.valueOf(s11));
                if (invoke.compareTo(invoke2) < 0) {
                    s10 = s11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Dk(long[] jArr, Mf.l<? super Long, Float> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Long.valueOf(jArr[0])).floatValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Long.valueOf(jArr[i10])).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char Dl(@NotNull char[] cArr, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (comparator.compare(Character.valueOf(c10), Character.valueOf(c11)) < 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Dm(boolean[] zArr, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                R invoke2 = selector.invoke(Boolean.valueOf(zArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float Dn(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        float floatValue = fArr[0].floatValue();
        int Oe2 = Oe(fArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.min(floatValue, fArr[i10].floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final char[] Do(char[] cArr, Mf.l<? super Character, P0> action) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (char c10 : cArr) {
            action.invoke(Character.valueOf(c10));
        }
        return cArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Float Dp(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return Ep(fArr, Tf.f.f24956b);
    }

    public static final <S, T extends S> S Dq(@NotNull T[] tArr, @NotNull Mf.p<? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Oe2 = Oe(tArr);
        if (Oe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        S s10 = (S) tArr[Oe2];
        for (int i10 = Oe2 - 1; i10 >= 0; i10--) {
            s10 = operation.invoke((Object) tArr[i10], s10);
        }
        return s10;
    }

    @NotNull
    public static final List<Float> Dr(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return H.J();
        }
        List<Float> jz = jz(fArr);
        O.t1(jz);
        return jz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ds(char[] cArr, R r10, Mf.p<? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(cArr.length + 1);
        arrayList.add(r10);
        for (char c10 : cArr) {
            r10 = operation.invoke(r10, Character.valueOf(c10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    public static final boolean Dt(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return zArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static short[] Du(@NotNull short[] sArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new short[0] : C14985q.m1(sArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Long> Dv(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return dw(jArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int Dw(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Integer> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (short s10 : sArr) {
            i10 += selector.invoke(Short.valueOf(s10)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int Dx(boolean[] zArr, Mf.l<? super Boolean, nf.B0> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (boolean z10 : zArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Boolean.valueOf(z10)).q0());
        }
        return o10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Double>> C Dy(@NotNull double[] dArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (double d10 : dArr) {
            destination.add(Double.valueOf(d10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Long> Dz(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = jArr.length;
        return length != 0 ? length != 1 ? (Set) Gy(jArr, new LinkedHashSet(n0.j(jArr.length))) : y0.f(Long.valueOf(jArr[0])) : z0.k();
    }

    @NotNull
    public static final Iterable<Byte> E5(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr.length == 0 ? H.J() : new b(bArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M E6(@NotNull float[] fArr, @NotNull M destination, @NotNull Mf.l<? super Float, ? extends K> keySelector, @NotNull Mf.l<? super Float, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (float f10 : fArr) {
            destination.put(keySelector.invoke(Float.valueOf(f10)), valueTransform.invoke(Float.valueOf(f10)));
        }
        return destination;
    }

    @Ef.f
    public static final double E7(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final byte[] E8(byte[] bArr, int i10, Mf.l<? super Integer, Byte> init) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        byte[] copyOf = Arrays.copyOf(bArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = bArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).byteValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Short> E9(@NotNull short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (i10 >= 0) {
            return ey(sArr, Vf.u.w(sArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <V> List<V> EA(@NotNull float[] fArr, @NotNull float[] other, @NotNull Mf.p<? super Float, ? super Float, ? extends V> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(fArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Float.valueOf(fArr[i10]), Float.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Long> Ea(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                arrayList.add(Long.valueOf(j10));
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Boolean>> C Eb(@NotNull boolean[] zArr, @NotNull C destination, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                destination.add(Boolean.valueOf(z10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Long Ec(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return Long.valueOf(j10);
            }
        }
        return null;
    }

    public static final <R> R Ed(@NotNull short[] sArr, R r10, @NotNull Mf.p<? super R, ? super Short, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (short s10 : sArr) {
            r10 = operation.invoke(r10, Short.valueOf(s10));
        }
        return r10;
    }

    @NotNull
    public static Vf.l Ee(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return new Vf.l(0, Ne(jArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Ef(@NotNull char[] cArr, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (char c10 : cArr) {
            K invoke = keySelector.invoke(Character.valueOf(c10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Character.valueOf(c10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Eg(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr.length == 0;
    }

    public static String Eh(short[] sArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return vh(sArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <R> List<R> Ei(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j10 : jArr) {
            arrayList.add(transform.invoke(Long.valueOf(j10)));
        }
        return arrayList;
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> boolean Ej(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        if (Qe2 == 0) {
            return z10;
        }
        R invoke = selector.invoke(Boolean.valueOf(z10));
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                R invoke2 = selector.invoke(Boolean.valueOf(z11));
                if (invoke.compareTo(invoke2) < 0) {
                    z10 = z11;
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return z10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Float Ek(T[] tArr, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(tArr[0]).floatValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(tArr[i10]).floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double El(@NotNull double[] dArr, @NotNull Comparator<? super Double> comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                if (comparator.compare(Double.valueOf(d10), Double.valueOf(d11)) < 0) {
                    d10 = d11;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Em(byte[] bArr, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(Byte.valueOf(bArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer En(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (i10 > i12) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double[] Eo(double[] dArr, Mf.l<? super Double, P0> action) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (double d10 : dArr) {
            action.invoke(Double.valueOf(d10));
        }
        return dArr;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float Ep(@NotNull float[] fArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (fArr.length == 0) {
            return null;
        }
        return Float.valueOf(fArr[random.m(fArr.length)]);
    }

    public static final short Eq(@NotNull short[] sArr, @NotNull Mf.p<? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Pe2 = Pe(sArr);
        if (Pe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short s10 = sArr[Pe2];
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            s10 = operation.invoke(Short.valueOf(sArr[i10]), Short.valueOf(s10)).shortValue();
        }
        return s10;
    }

    @NotNull
    public static final List<Integer> Er(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return H.J();
        }
        List<Integer> kz = kz(iArr);
        O.t1(kz);
        return kz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Es(double[] dArr, R r10, Mf.p<? super R, ? super Double, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(dArr.length + 1);
        arrayList.add(r10);
        for (double d10 : dArr) {
            r10 = operation.invoke(r10, Double.valueOf(d10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    public static final boolean Et(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Boolean bool = null;
        boolean z10 = false;
        for (boolean z11 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z11)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                bool = Boolean.valueOf(z11);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(bool, "null cannot be cast to non-null type kotlin.Boolean");
        return bool.booleanValue();
    }

    @NotNull
    public static short[] Eu(@NotNull short[] sArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        short[] sArr2 = new short[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            sArr2[i10] = sArr[it.next().intValue()];
            i10++;
        }
        return sArr2;
    }

    @NotNull
    public static final <T, R extends Comparable<? super R>> List<T> Ev(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return ew(tArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int Ew(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Integer> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (boolean z10 : zArr) {
            i10 += selector.invoke(Boolean.valueOf(z10)).intValue();
        }
        return i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Ex(byte[] bArr, Mf.l<? super Byte, nf.F0> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (byte b10 : bArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Byte.valueOf(b10)).l0());
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Float>> C Ey(@NotNull float[] fArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (float f10 : fArr) {
            destination.add(Float.valueOf(f10));
        }
        return destination;
    }

    @NotNull
    public static final <T> Set<T> Ez(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int length = tArr.length;
        return length != 0 ? length != 1 ? (Set) Hy(tArr, new LinkedHashSet(n0.j(tArr.length))) : y0.f(tArr[0]) : z0.k();
    }

    @NotNull
    public static final Iterable<Character> F5(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr.length == 0 ? H.J() : new i(cArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Integer>> M F6(@NotNull int[] iArr, @NotNull M destination, @NotNull Mf.l<? super Integer, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (int i10 : iArr) {
            destination.put(keySelector.invoke(Integer.valueOf(i10)), Integer.valueOf(i10));
        }
        return destination;
    }

    @Ef.f
    public static final float F7(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final char[] F8(char[] cArr, int i10, Mf.l<? super Integer, Character> init) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        char[] copyOf = Arrays.copyOf(cArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = cArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).charValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Boolean> F9(@NotNull boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (i10 >= 0) {
            return fy(zArr, Vf.u.w(zArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<nf.Z<Float, R>> FA(@NotNull float[] fArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(fArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            float f10 = fArr[i10];
            arrayList.add(nf.v0.a(Float.valueOf(f10), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> Fa(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @Ef.f
    public static final Boolean Fb(boolean[] zArr, Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return Boolean.valueOf(z10);
            }
        }
        return null;
    }

    @Nullable
    public static final <T> T Fc(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        return tArr[0];
    }

    public static final <R> R Fd(@NotNull boolean[] zArr, R r10, @NotNull Mf.p<? super R, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (boolean z10 : zArr) {
            r10 = operation.invoke(r10, Boolean.valueOf(z10));
        }
        return r10;
    }

    @NotNull
    public static final <T> Vf.l Fe(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return new Vf.l(0, Oe(tArr));
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Double>>> M Ff(@NotNull double[] dArr, @NotNull M destination, @NotNull Mf.l<? super Double, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (double d10 : dArr) {
            K invoke = keySelector.invoke(Double.valueOf(d10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Double.valueOf(d10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Fg(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr.length == 0;
    }

    public static String Fh(boolean[] zArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return wh(zArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <T, R> List<R> Fi(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(tArr.length);
        for (T t10 : tArr) {
            arrayList.add(transform.invoke(t10));
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Fj(byte[] bArr, Mf.l<? super Byte, Double> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Byte.valueOf(bArr[0])).doubleValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Byte.valueOf(bArr[i10])).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Fk(short[] sArr, Mf.l<? super Short, Float> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Short.valueOf(sArr[0])).floatValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Short.valueOf(sArr[i10])).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float Fl(@NotNull float[] fArr, @NotNull Comparator<? super Float> comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                if (comparator.compare(Float.valueOf(f10), Float.valueOf(f11)) < 0) {
                    f10 = f11;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Fm(char[] cArr, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(cArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long Fn(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (j10 > j11) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float[] Fo(float[] fArr, Mf.l<? super Float, P0> action) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (float f10 : fArr) {
            action.invoke(Float.valueOf(f10));
        }
        return fArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Integer Fp(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return Gp(iArr, Tf.f.f24956b);
    }

    public static final boolean Fq(@NotNull boolean[] zArr, @NotNull Mf.p<? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Qe2 = Qe(zArr);
        if (Qe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        boolean z10 = zArr[Qe2];
        for (int i10 = Qe2 - 1; i10 >= 0; i10--) {
            z10 = operation.invoke(Boolean.valueOf(zArr[i10]), Boolean.valueOf(z10)).booleanValue();
        }
        return z10;
    }

    @NotNull
    public static final List<Long> Fr(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return H.J();
        }
        List<Long> lz = lz(jArr);
        O.t1(lz);
        return lz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Fs(float[] fArr, R r10, Mf.p<? super R, ? super Float, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(fArr.length + 1);
        arrayList.add(r10);
        for (float f10 : fArr) {
            r10 = operation.invoke(r10, Float.valueOf(f10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Boolean Ft(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length == 1) {
            return Boolean.valueOf(zArr[0]);
        }
        return null;
    }

    @NotNull
    public static final boolean[] Fu(@NotNull boolean[] zArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new boolean[0] : C14985q.n1(zArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Short> Fv(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return fw(sArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Fw(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Double> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (byte b10 : bArr) {
            d10 += selector.invoke(Byte.valueOf(b10)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Fx(char[] cArr, Mf.l<? super Character, nf.F0> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (char c10 : cArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Character.valueOf(c10)).l0());
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Integer>> C Fy(@NotNull int[] iArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (int i10 : iArr) {
            destination.add(Integer.valueOf(i10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Short> Fz(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = sArr.length;
        return length != 0 ? length != 1 ? (Set) Iy(sArr, new LinkedHashSet(n0.j(sArr.length))) : y0.f(Short.valueOf(sArr[0])) : z0.k();
    }

    @NotNull
    public static final Iterable<Double> G5(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr.length == 0 ? H.J() : new g(dArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M G6(@NotNull int[] iArr, @NotNull M destination, @NotNull Mf.l<? super Integer, ? extends K> keySelector, @NotNull Mf.l<? super Integer, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (int i10 : iArr) {
            destination.put(keySelector.invoke(Integer.valueOf(i10)), valueTransform.invoke(Integer.valueOf(i10)));
        }
        return destination;
    }

    @Ef.f
    public static final int G7(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final double[] G8(double[] dArr, int i10, Mf.l<? super Integer, Double> init) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        double[] copyOf = Arrays.copyOf(dArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = dArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).doubleValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Byte> G9(@NotNull byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (i10 >= 0) {
            return Nx(bArr, Vf.u.w(bArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R, V> List<V> GA(@NotNull float[] fArr, @NotNull R[] other, @NotNull Mf.p<? super Float, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(fArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Float.valueOf(fArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Short> Ga(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                arrayList.add(Short.valueOf(s10));
            }
        }
        return arrayList;
    }

    @Ef.f
    public static final Byte Gb(byte[] bArr, Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return Byte.valueOf(b10);
            }
        }
        return null;
    }

    @Nullable
    public static final <T> T Gc(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    public static final <R> R Gd(@NotNull byte[] bArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Byte, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Byte.valueOf(bArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    @NotNull
    public static Vf.l Ge(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return new Vf.l(0, Pe(sArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Gf(@NotNull double[] dArr, @NotNull M destination, @NotNull Mf.l<? super Double, ? extends K> keySelector, @NotNull Mf.l<? super Double, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (double d10 : dArr) {
            K invoke = keySelector.invoke(Double.valueOf(d10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Double.valueOf(d10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Gg(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr.length == 0;
    }

    public static byte Gh(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length != 0) {
            return bArr[Ie(bArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @NotNull
    public static final <R> List<R> Gi(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(sArr.length);
        for (short s10 : sArr) {
            arrayList.add(transform.invoke(Short.valueOf(s10)));
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Gj(char[] cArr, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Character.valueOf(cArr[0])).doubleValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Character.valueOf(cArr[i10])).doubleValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Gk(boolean[] zArr, Mf.l<? super Boolean, Float> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Boolean.valueOf(zArr[0])).floatValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Boolean.valueOf(zArr[i10])).floatValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final int Gl(@NotNull int[] iArr, @NotNull Comparator<? super Integer> comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (comparator.compare(Integer.valueOf(i10), Integer.valueOf(i12)) < 0) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Gm(double[] dArr, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                R invoke2 = selector.invoke(Double.valueOf(dArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short Gn(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (s10 > s11) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int[] Go(int[] iArr, Mf.l<? super Integer, P0> action) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (int i10 : iArr) {
            action.invoke(Integer.valueOf(i10));
        }
        return iArr;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer Gp(@NotNull int[] iArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (iArr.length == 0) {
            return null;
        }
        return Integer.valueOf(iArr[random.m(iArr.length)]);
    }

    public static final byte Gq(@NotNull byte[] bArr, @NotNull Mf.q<? super Integer, ? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ie2 = Ie(bArr);
        if (Ie2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte b10 = bArr[Ie2];
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            b10 = operation.n(Integer.valueOf(i10), Byte.valueOf(bArr[i10]), Byte.valueOf(b10)).byteValue();
        }
        return b10;
    }

    @NotNull
    public static final <T> List<T> Gr(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return H.J();
        }
        List<T> mz = mz(tArr);
        O.t1(mz);
        return mz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Gs(int[] iArr, R r10, Mf.p<? super R, ? super Integer, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(iArr.length + 1);
        arrayList.add(r10);
        for (int i10 : iArr) {
            r10 = operation.invoke(r10, Integer.valueOf(i10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Boolean Gt(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Boolean bool = null;
        boolean z10 = false;
        for (boolean z11 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z11)).booleanValue()) {
                if (z10) {
                    return null;
                }
                bool = Boolean.valueOf(z11);
                z10 = true;
            }
        }
        if (z10) {
            return bool;
        }
        return null;
    }

    @NotNull
    public static final boolean[] Gu(@NotNull boolean[] zArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        boolean[] zArr2 = new boolean[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            zArr2[i10] = zArr[it.next().intValue()];
            i10++;
        }
        return zArr2;
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Boolean> Gv(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return gw(zArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Gw(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (char c10 : cArr) {
            d10 += selector.invoke(Character.valueOf(c10)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Gx(double[] dArr, Mf.l<? super Double, nf.F0> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (double d10 : dArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Double.valueOf(d10)).l0());
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Long>> C Gy(@NotNull long[] jArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (long j10 : jArr) {
            destination.add(Long.valueOf(j10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Boolean> Gz(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length;
        return length != 0 ? length != 1 ? (Set) Jy(zArr, new LinkedHashSet(n0.j(zArr.length))) : y0.f(Boolean.valueOf(zArr[0])) : z0.k();
    }

    @NotNull
    public static final Iterable<Float> H5(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr.length == 0 ? H.J() : new f(fArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Long>> M H6(@NotNull long[] jArr, @NotNull M destination, @NotNull Mf.l<? super Long, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (long j10 : jArr) {
            destination.put(keySelector.invoke(Long.valueOf(j10)), Long.valueOf(j10));
        }
        return destination;
    }

    @Ef.f
    public static final long H7(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final float[] H8(float[] fArr, int i10, Mf.l<? super Integer, Float> init) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        float[] copyOf = Arrays.copyOf(fArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = fArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).floatValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Character> H9(@NotNull char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (i10 >= 0) {
            return Ox(cArr, Vf.u.w(cArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<nf.Z<Integer, R>> HA(@NotNull int[] iArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = iArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Integer.valueOf(iArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final List<Boolean> Ha(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                arrayList.add(Boolean.valueOf(z10));
            }
        }
        return arrayList;
    }

    @Ef.f
    public static final Character Hb(char[] cArr, Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return Character.valueOf(c10);
            }
        }
        return null;
    }

    @Nullable
    public static final Short Hc(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return null;
        }
        return Short.valueOf(sArr[0]);
    }

    public static final <R> R Hd(@NotNull char[] cArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Character.valueOf(cArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    @NotNull
    public static final Vf.l He(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return new Vf.l(0, Qe(zArr));
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Float>>> M Hf(@NotNull float[] fArr, @NotNull M destination, @NotNull Mf.l<? super Float, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (float f10 : fArr) {
            K invoke = keySelector.invoke(Float.valueOf(f10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Float.valueOf(f10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Hg(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr.length == 0;
    }

    public static final byte Hh(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = bArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                byte b10 = bArr[length];
                if (!predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return b10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static final <R> List<R> Hi(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z10 : zArr) {
            arrayList.add(transform.invoke(Boolean.valueOf(z10)));
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Hj(double[] dArr, Mf.l<? super Double, Double> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Double.valueOf(dArr[0])).doubleValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Double.valueOf(dArr[i10])).doubleValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Hk(byte[] bArr, Comparator<? super R> comparator, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Byte.valueOf(bArr[i10]));
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

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final long Hl(@NotNull long[] jArr, @NotNull Comparator<? super Long> comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (comparator.compare(Long.valueOf(j10), Long.valueOf(j11)) < 0) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Hm(float[] fArr, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                R invoke2 = selector.invoke(Float.valueOf(fArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final byte Hn(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (b10 > b11) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final long[] Ho(long[] jArr, Mf.l<? super Long, P0> action) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (long j10 : jArr) {
            action.invoke(Long.valueOf(j10));
        }
        return jArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Long Hp(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return Ip(jArr, Tf.f.f24956b);
    }

    public static final char Hq(@NotNull char[] cArr, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Je2 = Je(cArr);
        if (Je2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        char c10 = cArr[Je2];
        for (int i10 = Je2 - 1; i10 >= 0; i10--) {
            c10 = operation.n(Integer.valueOf(i10), Character.valueOf(cArr[i10]), Character.valueOf(c10)).charValue();
        }
        return c10;
    }

    @NotNull
    public static final List<Short> Hr(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return H.J();
        }
        List<Short> nz = nz(sArr);
        O.t1(nz);
        return nz;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Hs(long[] jArr, R r10, Mf.p<? super R, ? super Long, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(jArr.length + 1);
        arrayList.add(r10);
        for (long j10 : jArr) {
            r10 = operation.invoke(r10, Long.valueOf(j10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Byte Ht(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 1) {
            return Byte.valueOf(bArr[0]);
        }
        return null;
    }

    public static final <T, R extends Comparable<? super R>> void Hu(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length > 1) {
            C14985q.h4(tArr, new C15420g.a(selector));
        }
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Byte> Hv(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return Yv(bArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Hw(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Double> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (double d11 : dArr) {
            d10 += selector.invoke(Double.valueOf(d11)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Hx(float[] fArr, Mf.l<? super Float, nf.F0> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (float f10 : fArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Float.valueOf(f10)).l0());
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C Hy(@NotNull T[] tArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (T t10 : tArr) {
            destination.add(t10);
        }
        return destination;
    }

    @NotNull
    public static final short[] Hz(@NotNull Short[] shArr) {
        kotlin.jvm.internal.M.p(shArr, "<this>");
        int length = shArr.length;
        short[] sArr = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr[i10] = shArr[i10].shortValue();
        }
        return sArr;
    }

    @NotNull
    public static final Iterable<Integer> I5(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr.length == 0 ? H.J() : new d(iArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M I6(@NotNull long[] jArr, @NotNull M destination, @NotNull Mf.l<? super Long, ? extends K> keySelector, @NotNull Mf.l<? super Long, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (long j10 : jArr) {
            destination.put(keySelector.invoke(Long.valueOf(j10)), valueTransform.invoke(Long.valueOf(j10)));
        }
        return destination;
    }

    @Ef.f
    public static final <T> T I7(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final int[] I8(int[] iArr, int i10, Mf.l<? super Integer, Integer> init) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        int[] copyOf = Arrays.copyOf(iArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = iArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).intValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Double> I9(@NotNull double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (i10 >= 0) {
            return Px(dArr, Vf.u.w(dArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R, V> List<V> IA(@NotNull int[] iArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Integer, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = iArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Integer.valueOf(iArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final List<Byte> Ia(@NotNull byte[] bArr, @NotNull Mf.p<? super Integer, ? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            byte b10 = bArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Byte.valueOf(b10)).booleanValue()) {
                arrayList.add(Byte.valueOf(b10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Double Ib(double[] dArr, Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return Double.valueOf(d10);
            }
        }
        return null;
    }

    @Nullable
    public static final Short Ic(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return Short.valueOf(s10);
            }
        }
        return null;
    }

    public static final <R> R Id(@NotNull double[] dArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Double, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Double.valueOf(dArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    public static int Ie(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr.length - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M If(@NotNull float[] fArr, @NotNull M destination, @NotNull Mf.l<? super Float, ? extends K> keySelector, @NotNull Mf.l<? super Float, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (float f10 : fArr) {
            K invoke = keySelector.invoke(Float.valueOf(f10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Float.valueOf(f10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Ig(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr.length == 0;
    }

    public static final char Ih(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length != 0) {
            return cArr[Je(cArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @NotNull
    public static final <R> List<R> Ii(@NotNull byte[] bArr, @NotNull Mf.p<? super Integer, ? super Byte, ? extends R> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(bArr.length);
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Byte.valueOf(bArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Ij(float[] fArr, Mf.l<? super Float, Double> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Float.valueOf(fArr[0])).doubleValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Float.valueOf(fArr[i10])).doubleValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Ik(char[] cArr, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(cArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T> T Il(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (comparator.compare(t10, t11) < 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Im(int[] iArr, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(Integer.valueOf(iArr[i10]));
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

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char In(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (kotlin.jvm.internal.M.t(c10, c11) > 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <T> T[] Io(T[] tArr, Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (T t10 : tArr) {
            action.invoke(t10);
        }
        return tArr;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long Ip(@NotNull long[] jArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (jArr.length == 0) {
            return null;
        }
        return Long.valueOf(jArr[random.m(jArr.length)]);
    }

    public static final double Iq(@NotNull double[] dArr, @NotNull Mf.q<? super Integer, ? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ke2 = Ke(dArr);
        if (Ke2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        double d10 = dArr[Ke2];
        for (int i10 = Ke2 - 1; i10 >= 0; i10--) {
            d10 = operation.n(Integer.valueOf(i10), Double.valueOf(dArr[i10]), Double.valueOf(d10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Boolean> Ir(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length == 0) {
            return H.J();
        }
        List<Boolean> oz = oz(zArr);
        O.t1(oz);
        return oz;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> Is(@NotNull T[] tArr, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(tArr.length + 1);
        arrayList.add(r10);
        for (A.c cVar : tArr) {
            r10 = operation.invoke(r10, cVar);
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Byte It(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Byte b10 = null;
        boolean z10 = false;
        for (byte b11 : bArr) {
            if (predicate.invoke(Byte.valueOf(b11)).booleanValue()) {
                if (z10) {
                    return null;
                }
                b10 = Byte.valueOf(b11);
                z10 = true;
            }
        }
        if (z10) {
            return b10;
        }
        return null;
    }

    public static final <T, R extends Comparable<? super R>> void Iu(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length > 1) {
            C14985q.h4(tArr, new C15420g.c(selector));
        }
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Character> Iv(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return Zv(cArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Iw(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Double> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (float f10 : fArr) {
            d10 += selector.invoke(Float.valueOf(f10)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Ix(int[] iArr, Mf.l<? super Integer, nf.F0> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (int i11 : iArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Integer.valueOf(i11)).l0());
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Short>> C Iy(@NotNull short[] sArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (short s10 : sArr) {
            destination.add(Short.valueOf(s10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Byte> Iz(@NotNull byte[] bArr, @NotNull Iterable<Byte> other) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Byte> pz = pz(bArr);
        M.t0(pz, other);
        return pz;
    }

    @NotNull
    public static final Iterable<Long> J5(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr.length == 0 ? H.J() : new e(jArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, M extends Map<? super K, ? super T>> M J6(@NotNull T[] tArr, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (T t10 : tArr) {
            destination.put(keySelector.invoke(t10), t10);
        }
        return destination;
    }

    @Ef.f
    public static final short J7(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final long[] J8(long[] jArr, int i10, Mf.l<? super Integer, Long> init) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        long[] copyOf = Arrays.copyOf(jArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = jArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).longValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Float> J9(@NotNull float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (i10 >= 0) {
            return Qx(fArr, Vf.u.w(fArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final List<nf.Z<Integer, Integer>> JA(@NotNull int[] iArr, @NotNull int[] other) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(iArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Integer.valueOf(iArr[i10]), Integer.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Character> Ja(@NotNull char[] cArr, @NotNull Mf.p<? super Integer, ? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char c10 = cArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Character.valueOf(c10)).booleanValue()) {
                arrayList.add(Character.valueOf(c10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Float Jb(float[] fArr, Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return Float.valueOf(f10);
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Jc(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (byte b10 : bArr) {
            M.t0(arrayList, transform.invoke(Byte.valueOf(b10)));
        }
        return arrayList;
    }

    public static final <R> R Jd(@NotNull float[] fArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Float, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Float.valueOf(fArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    public static final int Je(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr.length - 1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Integer>>> M Jf(@NotNull int[] iArr, @NotNull M destination, @NotNull Mf.l<? super Integer, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (int i10 : iArr) {
            K invoke = keySelector.invoke(Integer.valueOf(i10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Integer.valueOf(i10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Jg(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr.length == 0;
    }

    public static final char Jh(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = cArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                char c10 = cArr[length];
                if (!predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return c10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static final <R> List<R> Ji(@NotNull char[] cArr, @NotNull Mf.p<? super Integer, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(cArr.length);
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Character.valueOf(cArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Jj(int[] iArr, Mf.l<? super Integer, Double> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Integer.valueOf(iArr[0])).doubleValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Integer.valueOf(iArr[i10])).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Jk(double[] dArr, Comparator<? super R> comparator, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Double.valueOf(dArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final short Jl(@NotNull short[] sArr, @NotNull Comparator<? super Short> comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (comparator.compare(Short.valueOf(s10), Short.valueOf(s11)) < 0) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Jm(long[] jArr, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(Long.valueOf(jArr[i10]));
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

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double Jn(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = Math.min(d10, dArr[i10]);
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final short[] Jo(short[] sArr, Mf.l<? super Short, P0> action) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (short s10 : sArr) {
            action.invoke(Short.valueOf(s10));
        }
        return sArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <T> T Jp(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (T) Kp(tArr, Tf.f.f24956b);
    }

    public static final float Jq(@NotNull float[] fArr, @NotNull Mf.q<? super Integer, ? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Le2 = Le(fArr);
        if (Le2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        float f10 = fArr[Le2];
        for (int i10 = Le2 - 1; i10 >= 0; i10--) {
            f10 = operation.n(Integer.valueOf(i10), Float.valueOf(fArr[i10]), Float.valueOf(f10)).floatValue();
        }
        return f10;
    }

    @NotNull
    public static byte[] Jr(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[bArr.length];
        int Ie2 = Ie(bArr);
        if (Ie2 >= 0) {
            int i10 = 0;
            while (true) {
                bArr2[Ie2 - i10] = bArr[i10];
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return bArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Js(short[] sArr, R r10, Mf.p<? super R, ? super Short, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(sArr.length + 1);
        arrayList.add(r10);
        for (short s10 : sArr) {
            r10 = operation.invoke(r10, Short.valueOf(s10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Character Jt(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 1) {
            return Character.valueOf(cArr[0]);
        }
        return null;
    }

    public static final void Ju(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length > 1) {
            C14985q.G3(bArr);
            ir(bArr);
        }
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Double> Jv(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return aw(dArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Jw(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Double> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (int i10 : iArr) {
            d10 += selector.invoke(Integer.valueOf(i10)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Jx(long[] jArr, Mf.l<? super Long, nf.F0> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (long j10 : jArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Long.valueOf(j10)).l0());
        }
        return i10;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Boolean>> C Jy(@NotNull boolean[] zArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (boolean z10 : zArr) {
            destination.add(Boolean.valueOf(z10));
        }
        return destination;
    }

    @NotNull
    public static final Set<Character> Jz(@NotNull char[] cArr, @NotNull Iterable<Character> other) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Character> qz = qz(cArr);
        M.t0(qz, other);
        return qz;
    }

    @NotNull
    public static <T> Iterable<T> K5(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr.length == 0 ? H.J() : new a(tArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, ? super V>> M K6(@NotNull T[] tArr, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (T t10 : tArr) {
            destination.put(keySelector.invoke(t10), valueTransform.invoke(t10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean K7(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr[0];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final <T> T[] K8(T[] tArr, int i10, Mf.l<? super Integer, ? extends T> init) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i10);
        kotlin.jvm.internal.M.o(tArr2, "copyOf(...)");
        for (int length = tArr.length; length < i10; length++) {
            tArr2[length] = init.invoke(Integer.valueOf(length));
        }
        return tArr2;
    }

    @NotNull
    public static final List<Integer> K9(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (i10 >= 0) {
            return Rx(iArr, Vf.u.w(iArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <V> List<V> KA(@NotNull int[] iArr, @NotNull int[] other, @NotNull Mf.p<? super Integer, ? super Integer, ? extends V> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(iArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Integer.valueOf(iArr[i10]), Integer.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Double> Ka(@NotNull double[] dArr, @NotNull Mf.p<? super Integer, ? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            double d10 = dArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Double.valueOf(d10)).booleanValue()) {
                arrayList.add(Double.valueOf(d10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Integer Kb(int[] iArr, Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                return Integer.valueOf(i10);
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Kc(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (char c10 : cArr) {
            M.t0(arrayList, transform.invoke(Character.valueOf(c10)));
        }
        return arrayList;
    }

    public static final <R> R Kd(@NotNull int[] iArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Integer, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Integer.valueOf(iArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    public static final int Ke(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr.length - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Kf(@NotNull int[] iArr, @NotNull M destination, @NotNull Mf.l<? super Integer, ? extends K> keySelector, @NotNull Mf.l<? super Integer, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (int i10 : iArr) {
            K invoke = keySelector.invoke(Integer.valueOf(i10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Integer.valueOf(i10)));
        }
        return destination;
    }

    @Ef.f
    public static final <T> boolean Kg(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr.length == 0;
    }

    public static final double Kh(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length != 0) {
            return dArr[Ke(dArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @NotNull
    public static final <R> List<R> Ki(@NotNull double[] dArr, @NotNull Mf.p<? super Integer, ? super Double, ? extends R> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(dArr.length);
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Kj(long[] jArr, Mf.l<? super Long, Double> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Long.valueOf(jArr[0])).doubleValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Long.valueOf(jArr[i10])).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Kk(float[] fArr, Comparator<? super R> comparator, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Float.valueOf(fArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "maxWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final boolean Kl(@NotNull boolean[] zArr, @NotNull Comparator<? super Boolean> comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                if (comparator.compare(Boolean.valueOf(z10), Boolean.valueOf(z11)) < 0) {
                    z10 = z11;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return z10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R Km(T[] tArr, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                R invoke2 = selector.invoke(tArr[i10]);
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double Kn(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = dArr[0].doubleValue();
        int Oe2 = Oe(dArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, dArr[i10].doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean[] Ko(boolean[] zArr, Mf.l<? super Boolean, P0> action) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (boolean z10 : zArr) {
            action.invoke(Boolean.valueOf(z10));
        }
        return zArr;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T Kp(@NotNull T[] tArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (tArr.length == 0) {
            return null;
        }
        return tArr[random.m(tArr.length)];
    }

    public static final int Kq(@NotNull int[] iArr, @NotNull Mf.q<? super Integer, ? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Me2 = Me(iArr);
        if (Me2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int i10 = iArr[Me2];
        for (int i11 = Me2 - 1; i11 >= 0; i11--) {
            i10 = operation.n(Integer.valueOf(i11), Integer.valueOf(iArr[i11]), Integer.valueOf(i10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final char[] Kr(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return cArr;
        }
        char[] cArr2 = new char[cArr.length];
        int Je2 = Je(cArr);
        if (Je2 >= 0) {
            int i10 = 0;
            while (true) {
                cArr2[Je2 - i10] = cArr[i10];
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return cArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ks(boolean[] zArr, R r10, Mf.p<? super R, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(zArr.length + 1);
        arrayList.add(r10);
        for (boolean z10 : zArr) {
            r10 = operation.invoke(r10, Boolean.valueOf(z10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Character Kt(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Character ch2 = null;
        boolean z10 = false;
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                ch2 = Character.valueOf(c10);
                z10 = true;
            }
        }
        if (z10) {
            return ch2;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Ku(@NotNull byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        C14985q.H3(bArr, i10, i11);
        jr(bArr, i10, i11);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Float> Kv(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return bw(fArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Kw(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Double> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (long j10 : jArr) {
            d10 += selector.invoke(Long.valueOf(j10)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final <T> long Kx(T[] tArr, Mf.l<? super T, nf.F0> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (T t10 : tArr) {
            i10 = nf.F0.i(i10 + selector.invoke(t10).l0());
        }
        return i10;
    }

    @NotNull
    public static final double[] Ky(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr2[i10] = dArr[i10].doubleValue();
        }
        return dArr2;
    }

    @NotNull
    public static final Set<Double> Kz(@NotNull double[] dArr, @NotNull Iterable<Double> other) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Double> rz = rz(dArr);
        M.t0(rz, other);
        return rz;
    }

    @NotNull
    public static final Iterable<Short> L5(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr.length == 0 ? H.J() : new c(sArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Short>> M L6(@NotNull short[] sArr, @NotNull M destination, @NotNull Mf.l<? super Short, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (short s10 : sArr) {
            destination.put(keySelector.invoke(Short.valueOf(s10)), Short.valueOf(s10));
        }
        return destination;
    }

    @Ef.f
    public static final byte L7(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr[1];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final short[] L8(short[] sArr, int i10, Mf.l<? super Integer, Short> init) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        short[] copyOf = Arrays.copyOf(sArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = sArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).shortValue();
        }
        return copyOf;
    }

    @NotNull
    public static final List<Long> L9(@NotNull long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (i10 >= 0) {
            return Sx(jArr, Vf.u.w(jArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<nf.Z<Integer, R>> LA(@NotNull int[] iArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(iArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = iArr[i10];
            arrayList.add(nf.v0.a(Integer.valueOf(i11), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Float> La(@NotNull float[] fArr, @NotNull Mf.p<? super Integer, ? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            float f10 = fArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Float.valueOf(f10)).booleanValue()) {
                arrayList.add(Float.valueOf(f10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Long Lb(long[] jArr, Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return Long.valueOf(j10);
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Lc(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (double d10 : dArr) {
            M.t0(arrayList, transform.invoke(Double.valueOf(d10)));
        }
        return arrayList;
    }

    public static final <R> R Ld(@NotNull long[] jArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Long, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Long.valueOf(jArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    public static final int Le(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr.length - 1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Long>>> M Lf(@NotNull long[] jArr, @NotNull M destination, @NotNull Mf.l<? super Long, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (long j10 : jArr) {
            K invoke = keySelector.invoke(Long.valueOf(j10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Long.valueOf(j10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Lg(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr.length == 0;
    }

    public static final double Lh(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = dArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                double d10 = dArr[length];
                if (!predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return d10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static final <R> List<R> Li(@NotNull float[] fArr, @NotNull Mf.p<? super Integer, ? super Float, ? extends R> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(fArr.length);
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Float.valueOf(fArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double Lj(T[] tArr, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(tArr[0]).doubleValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(tArr[i10]).doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Lk(int[] iArr, Comparator<? super R> comparator, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Integer.valueOf(iArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Boolean Ll(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        if (Qe2 == 0) {
            return Boolean.valueOf(z10);
        }
        R invoke = selector.invoke(Boolean.valueOf(z10));
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                R invoke2 = selector.invoke(Boolean.valueOf(z11));
                if (invoke.compareTo(invoke2) > 0) {
                    z10 = z11;
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Lm(short[] sArr, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(Short.valueOf(sArr[i10]));
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

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float Ln(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = Math.min(f10, fArr[i10]);
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final byte[] Lo(byte[] bArr, Mf.p<? super Integer, ? super Byte, P0> action) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Byte.valueOf(bArr[i10]));
            i10++;
            i11++;
        }
        return bArr;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Short Lp(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return Mp(sArr, Tf.f.f24956b);
    }

    public static final long Lq(@NotNull long[] jArr, @NotNull Mf.q<? super Integer, ? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ne2 = Ne(jArr);
        if (Ne2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long j10 = jArr[Ne2];
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            j10 = operation.n(Integer.valueOf(i10), Long.valueOf(jArr[i10]), Long.valueOf(j10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final double[] Lr(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return dArr;
        }
        double[] dArr2 = new double[dArr.length];
        int Ke2 = Ke(dArr);
        if (Ke2 >= 0) {
            int i10 = 0;
            while (true) {
                dArr2[Ke2 - i10] = dArr[i10];
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return dArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ls(byte[] bArr, R r10, Mf.q<? super Integer, ? super R, ? super Byte, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(bArr.length + 1);
        arrayList.add(r10);
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Byte.valueOf(bArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Double Lt(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 1) {
            return Double.valueOf(dArr[0]);
        }
        return null;
    }

    public static final void Lu(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length > 1) {
            C14985q.I3(cArr);
            kr(cArr);
        }
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Integer> Lv(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return cw(iArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final <T> double Lw(@NotNull T[] tArr, @NotNull Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (T t10 : tArr) {
            d10 += selector.invoke(t10).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Lx(short[] sArr, Mf.l<? super Short, nf.F0> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (short s10 : sArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Short.valueOf(s10)).l0());
        }
        return i10;
    }

    @NotNull
    public static final float[] Ly(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i10 = 0; i10 < length; i10++) {
            fArr2[i10] = fArr[i10].floatValue();
        }
        return fArr2;
    }

    @NotNull
    public static final Set<Float> Lz(@NotNull float[] fArr, @NotNull Iterable<Float> other) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Float> sz = sz(fArr);
        M.t0(sz, other);
        return sz;
    }

    @NotNull
    public static final Iterable<Boolean> M5(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr.length == 0 ? H.J() : new h(zArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M M6(@NotNull short[] sArr, @NotNull M destination, @NotNull Mf.l<? super Short, ? extends K> keySelector, @NotNull Mf.l<? super Short, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (short s10 : sArr) {
            destination.put(keySelector.invoke(Short.valueOf(s10)), valueTransform.invoke(Short.valueOf(s10)));
        }
        return destination;
    }

    @Ef.f
    public static final char M7(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr[1];
    }

    @Ef.f
    @InterfaceC14441w
    @InterfaceC14422l0(version = "2.2")
    public static final boolean[] M8(boolean[] zArr, int i10, Mf.l<? super Integer, Boolean> init) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(init, "init");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Invalid new array size: " + i10 + '.').toString());
        }
        boolean[] copyOf = Arrays.copyOf(zArr, i10);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        for (int length = zArr.length; length < i10; length++) {
            copyOf[length] = init.invoke(Integer.valueOf(length)).booleanValue();
        }
        return copyOf;
    }

    @NotNull
    public static final <T> List<T> M9(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (i10 >= 0) {
            return Tx(tArr, Vf.u.w(tArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R, V> List<V> MA(@NotNull int[] iArr, @NotNull R[] other, @NotNull Mf.p<? super Integer, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(iArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Integer.valueOf(iArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Integer> Ma(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = iArr[i10];
            int i13 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Integer.valueOf(i12)).booleanValue()) {
                arrayList.add(Integer.valueOf(i12));
            }
            i10++;
            i11 = i13;
        }
        return arrayList;
    }

    @Ef.f
    public static final <T> T Mb(T[] tArr, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Mc(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (float f10 : fArr) {
            M.t0(arrayList, transform.invoke(Float.valueOf(f10)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> R Md(@NotNull T[] tArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, tArr[i10]);
            i10++;
            i11++;
        }
        return r10;
    }

    public static int Me(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr.length - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Mf(@NotNull long[] jArr, @NotNull M destination, @NotNull Mf.l<? super Long, ? extends K> keySelector, @NotNull Mf.l<? super Long, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (long j10 : jArr) {
            K invoke = keySelector.invoke(Long.valueOf(j10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Long.valueOf(j10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Mg(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr.length == 0;
    }

    public static final float Mh(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length != 0) {
            return fArr[Le(fArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @NotNull
    public static final <R> List<R> Mi(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(iArr.length);
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Mj(short[] sArr, Mf.l<? super Short, Double> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Short.valueOf(sArr[0])).doubleValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Short.valueOf(sArr[i10])).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Mk(long[] jArr, Comparator<? super R> comparator, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Long.valueOf(jArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Byte Ml(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        if (Ie2 == 0) {
            return Byte.valueOf(b10);
        }
        R invoke = selector.invoke(Byte.valueOf(b10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                R invoke2 = selector.invoke(Byte.valueOf(b11));
                if (invoke.compareTo(invoke2) > 0) {
                    b10 = b11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Mm(boolean[] zArr, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                R invoke2 = selector.invoke(Boolean.valueOf(zArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float Mn(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = fArr[0].floatValue();
        int Oe2 = Oe(fArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.min(floatValue, fArr[i10].floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final char[] Mo(char[] cArr, Mf.p<? super Integer, ? super Character, P0> action) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Character.valueOf(cArr[i10]));
            i10++;
            i11++;
        }
        return cArr;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short Mp(@NotNull short[] sArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (sArr.length == 0) {
            return null;
        }
        return Short.valueOf(sArr[random.m(sArr.length)]);
    }

    public static final <S, T extends S> S Mq(@NotNull T[] tArr, @NotNull Mf.q<? super Integer, ? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Oe2 = Oe(tArr);
        if (Oe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        S s10 = (S) tArr[Oe2];
        for (int i10 = Oe2 - 1; i10 >= 0; i10--) {
            s10 = operation.n(Integer.valueOf(i10), (Object) tArr[i10], s10);
        }
        return s10;
    }

    @NotNull
    public static final float[] Mr(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return fArr;
        }
        float[] fArr2 = new float[fArr.length];
        int Le2 = Le(fArr);
        if (Le2 >= 0) {
            int i10 = 0;
            while (true) {
                fArr2[Le2 - i10] = fArr[i10];
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return fArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ms(char[] cArr, R r10, Mf.q<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(cArr.length + 1);
        arrayList.add(r10);
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Character.valueOf(cArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Double Mt(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Double d10 = null;
        boolean z10 = false;
        for (double d11 : dArr) {
            if (predicate.invoke(Double.valueOf(d11)).booleanValue()) {
                if (z10) {
                    return null;
                }
                d10 = Double.valueOf(d11);
                z10 = true;
            }
        }
        if (z10) {
            return d10;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Mu(@NotNull char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        C14985q.J3(cArr, i10, i11);
        lr(cArr, i10, i11);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Long> Mv(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return dw(jArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Mw(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Double> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (short s10 : sArr) {
            d10 += selector.invoke(Short.valueOf(s10)).doubleValue();
        }
        return d10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfULong")
    @InterfaceC14422l0(version = "1.5")
    public static final long Mx(boolean[] zArr, Mf.l<? super Boolean, nf.F0> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long i10 = nf.F0.i(0L);
        for (boolean z10 : zArr) {
            i10 = nf.F0.i(i10 + selector.invoke(Boolean.valueOf(z10)).l0());
        }
        return i10;
    }

    @NotNull
    public static final HashSet<Byte> My(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return (HashSet) By(bArr, new HashSet(n0.j(bArr.length)));
    }

    @NotNull
    public static final Set<Integer> Mz(@NotNull int[] iArr, @NotNull Iterable<Integer> other) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Integer> tz = tz(iArr);
        M.t0(tz, other);
        return tz;
    }

    @NotNull
    public static final InterfaceC3312m<Byte> N5(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr.length == 0 ? Xf.x.l() : new k(bArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Boolean>> M N6(@NotNull boolean[] zArr, @NotNull M destination, @NotNull Mf.l<? super Boolean, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (boolean z10 : zArr) {
            destination.put(keySelector.invoke(Boolean.valueOf(z10)), Boolean.valueOf(z10));
        }
        return destination;
    }

    @Ef.f
    public static final double N7(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr[1];
    }

    @Ef.f
    public static final int N8(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr.length;
    }

    @NotNull
    public static final List<Short> N9(@NotNull short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (i10 >= 0) {
            return Ux(sArr, Vf.u.w(sArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<nf.Z<Long, R>> NA(@NotNull long[] jArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = jArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Long.valueOf(jArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final List<Long> Na(@NotNull long[] jArr, @NotNull Mf.p<? super Integer, ? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            long j10 = jArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Long.valueOf(j10)).booleanValue()) {
                arrayList.add(Long.valueOf(j10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Short Nb(short[] sArr, Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return Short.valueOf(s10);
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Nc(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i10)));
        }
        return arrayList;
    }

    public static final <R> R Nd(@NotNull short[] sArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Short, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Short.valueOf(sArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    public static int Ne(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr.length - 1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, M extends Map<? super K, List<T>>> M Nf(@NotNull T[] tArr, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (T t10 : tArr) {
            K invoke = keySelector.invoke(t10);
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(t10);
        }
        return destination;
    }

    @Ef.f
    public static final boolean Ng(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return !(bArr.length == 0);
    }

    public static final float Nh(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = fArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                float f10 = fArr[length];
                if (!predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return f10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static final <R> List<R> Ni(@NotNull long[] jArr, @NotNull Mf.p<? super Integer, ? super Long, ? extends R> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(jArr.length);
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double Nj(boolean[] zArr, Mf.l<? super Boolean, Double> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Boolean.valueOf(zArr[0])).doubleValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Boolean.valueOf(zArr[i10])).doubleValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R Nk(T[] tArr, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(tArr[i10]);
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Character Nl(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        if (Je2 == 0) {
            return Character.valueOf(c10);
        }
        R invoke = selector.invoke(Character.valueOf(c10));
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                R invoke2 = selector.invoke(Character.valueOf(c11));
                if (invoke.compareTo(invoke2) > 0) {
                    c10 = c11;
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Nm(byte[] bArr, Mf.l<? super Byte, Double> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Byte.valueOf(bArr[0])).doubleValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Byte.valueOf(bArr[i10])).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final int Nn(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (i10 > i12) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final double[] No(double[] dArr, Mf.p<? super Integer, ? super Double, P0> action) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i10]));
            i10++;
            i11++;
        }
        return dArr;
    }

    public static final byte Np(@NotNull byte[] bArr, @NotNull Mf.p<? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                b10 = operation.invoke(Byte.valueOf(b10), Byte.valueOf(bArr[i10])).byteValue();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    public static final short Nq(@NotNull short[] sArr, @NotNull Mf.q<? super Integer, ? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Pe2 = Pe(sArr);
        if (Pe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short s10 = sArr[Pe2];
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            s10 = operation.n(Integer.valueOf(i10), Short.valueOf(sArr[i10]), Short.valueOf(s10)).shortValue();
        }
        return s10;
    }

    @NotNull
    public static int[] Nr(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return iArr;
        }
        int[] iArr2 = new int[iArr.length];
        int Me2 = Me(iArr);
        if (Me2 >= 0) {
            int i10 = 0;
            while (true) {
                iArr2[Me2 - i10] = iArr[i10];
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return iArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ns(double[] dArr, R r10, Mf.q<? super Integer, ? super R, ? super Double, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(dArr.length + 1);
        arrayList.add(r10);
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Double.valueOf(dArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Float Nt(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 1) {
            return Float.valueOf(fArr[0]);
        }
        return null;
    }

    public static final void Nu(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length > 1) {
            C14985q.K3(dArr);
            mr(dArr);
        }
    }

    @NotNull
    public static final <T, R extends Comparable<? super R>> List<T> Nv(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return ew(tArr, new C15420g.c(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final double Nw(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Double> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (boolean z10 : zArr) {
            d10 += selector.invoke(Boolean.valueOf(z10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Byte> Nx(@NotNull byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= bArr.length) {
            return Wy(bArr);
        }
        if (i10 == 1) {
            return G.l(Byte.valueOf(bArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (byte b10 : bArr) {
            arrayList.add(Byte.valueOf(b10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Character> Ny(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return (HashSet) Cy(cArr, new HashSet(n0.j(Vf.u.D(cArr.length, 128))));
    }

    @NotNull
    public static final Set<Long> Nz(@NotNull long[] jArr, @NotNull Iterable<Long> other) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Long> uz = uz(jArr);
        M.t0(uz, other);
        return uz;
    }

    @NotNull
    public static final InterfaceC3312m<Character> O5(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr.length == 0 ? Xf.x.l() : new r(cArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M O6(@NotNull boolean[] zArr, @NotNull M destination, @NotNull Mf.l<? super Boolean, ? extends K> keySelector, @NotNull Mf.l<? super Boolean, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (boolean z10 : zArr) {
            destination.put(keySelector.invoke(Boolean.valueOf(z10)), valueTransform.invoke(Boolean.valueOf(z10)));
        }
        return destination;
    }

    @Ef.f
    public static final float O7(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr[1];
    }

    public static final int O8(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final List<Boolean> O9(@NotNull boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (i10 >= 0) {
            return Vx(zArr, Vf.u.w(zArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R, V> List<V> OA(@NotNull long[] jArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Long, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = jArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Long.valueOf(jArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> Oa(@NotNull T[] tArr, @NotNull Mf.p<? super Integer, ? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            T t10 = tArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), t10).booleanValue()) {
                arrayList.add(t10);
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Boolean Ob(boolean[] zArr, Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = zArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                boolean z10 = zArr[length];
                if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                    return Boolean.valueOf(z10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Oc(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (long j10 : jArr) {
            M.t0(arrayList, transform.invoke(Long.valueOf(j10)));
        }
        return arrayList;
    }

    public static final <R> R Od(@NotNull boolean[] zArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            r10 = operation.n(Integer.valueOf(i11), r10, Boolean.valueOf(zArr[i10]));
            i10++;
            i11++;
        }
        return r10;
    }

    public static final <T> int Oe(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr.length - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, List<V>>> M Of(@NotNull T[] tArr, @NotNull M destination, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (T t10 : tArr) {
            K invoke = keySelector.invoke(t10);
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(t10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Og(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return !(cArr.length == 0);
    }

    public static int Oh(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[Me(iArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @NotNull
    public static final <T, R> List<R> Oi(@NotNull T[] tArr, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(tArr.length);
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), tArr[i10]));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Oj(byte[] bArr, Mf.l<? super Byte, Float> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Byte.valueOf(bArr[0])).floatValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Byte.valueOf(bArr[i10])).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Ok(short[] sArr, Comparator<? super R> comparator, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Short.valueOf(sArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Double Ol(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        if (Ke2 == 0) {
            return Double.valueOf(d10);
        }
        R invoke = selector.invoke(Double.valueOf(d10));
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                R invoke2 = selector.invoke(Double.valueOf(d11));
                if (invoke.compareTo(invoke2) > 0) {
                    d10 = d11;
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Om(char[] cArr, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Character.valueOf(cArr[0])).doubleValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Character.valueOf(cArr[i10])).doubleValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final long On(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (j10 > j11) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final float[] Oo(float[] fArr, Mf.p<? super Integer, ? super Float, P0> action) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Float.valueOf(fArr[i10]));
            i10++;
            i11++;
        }
        return fArr;
    }

    public static final char Op(@NotNull char[] cArr, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                c10 = operation.invoke(Character.valueOf(c10), Character.valueOf(cArr[i10])).charValue();
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    public static final boolean Oq(@NotNull boolean[] zArr, @NotNull Mf.q<? super Integer, ? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Qe2 = Qe(zArr);
        if (Qe2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        boolean z10 = zArr[Qe2];
        for (int i10 = Qe2 - 1; i10 >= 0; i10--) {
            z10 = operation.n(Integer.valueOf(i10), Boolean.valueOf(zArr[i10]), Boolean.valueOf(z10)).booleanValue();
        }
        return z10;
    }

    @NotNull
    public static long[] Or(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return jArr;
        }
        long[] jArr2 = new long[jArr.length];
        int Ne2 = Ne(jArr);
        if (Ne2 >= 0) {
            int i10 = 0;
            while (true) {
                jArr2[Ne2 - i10] = jArr[i10];
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return jArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Os(float[] fArr, R r10, Mf.q<? super Integer, ? super R, ? super Float, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(fArr.length + 1);
        arrayList.add(r10);
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Float.valueOf(fArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Float Ot(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Float f10 = null;
        boolean z10 = false;
        for (float f11 : fArr) {
            if (predicate.invoke(Float.valueOf(f11)).booleanValue()) {
                if (z10) {
                    return null;
                }
                f10 = Float.valueOf(f11);
                z10 = true;
            }
        }
        if (z10) {
            return f10;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Ou(@NotNull double[] dArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        C14985q.L3(dArr, i10, i11);
        nr(dArr, i10, i11);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Short> Ov(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return fw(sArr, new C15420g.c(selector));
    }

    @Lf.j(name = "sumOfByte")
    public static final int Ow(@NotNull Byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int i10 = 0;
        for (Byte b10 : bArr) {
            i10 += b10.byteValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Character> Ox(@NotNull char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= cArr.length) {
            return Xy(cArr);
        }
        if (i10 == 1) {
            return G.l(Character.valueOf(cArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (char c10 : cArr) {
            arrayList.add(Character.valueOf(c10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Double> Oy(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return (HashSet) Dy(dArr, new HashSet(n0.j(dArr.length)));
    }

    @NotNull
    public static final <T> Set<T> Oz(@NotNull T[] tArr, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<T> vz = vz(tArr);
        M.t0(vz, other);
        return vz;
    }

    @NotNull
    public static final InterfaceC3312m<Double> P5(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr.length == 0 ? Xf.x.l() : new p(dArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M P6(@NotNull byte[] bArr, @NotNull M destination, @NotNull Mf.l<? super Byte, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (byte b10 : bArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Byte.valueOf(b10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final int P7(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr[1];
    }

    @Ef.f
    public static final int P8(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr.length;
    }

    @NotNull
    public static final List<Byte> P9(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Ie2 = Ie(bArr); -1 < Ie2; Ie2--) {
            if (!predicate.invoke(Byte.valueOf(bArr[Ie2])).booleanValue()) {
                return Nx(bArr, Ie2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final List<nf.Z<Long, Long>> PA(@NotNull long[] jArr, @NotNull long[] other) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(jArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Long.valueOf(jArr[i10]), Long.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Short> Pa(@NotNull short[] sArr, @NotNull Mf.p<? super Integer, ? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            short s10 = sArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Short.valueOf(s10)).booleanValue()) {
                arrayList.add(Short.valueOf(s10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Byte Pb(byte[] bArr, Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = bArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                byte b10 = bArr[length];
                if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                    return Byte.valueOf(b10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @NotNull
    public static final <T, R> List<R> Pc(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            M.t0(arrayList, transform.invoke(t10));
        }
        return arrayList;
    }

    public static final <R> R Pd(@NotNull byte[] bArr, R r10, @NotNull Mf.p<? super Byte, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Ie2 = Ie(bArr); Ie2 >= 0; Ie2--) {
            r10 = operation.invoke(Byte.valueOf(bArr[Ie2]), r10);
        }
        return r10;
    }

    public static int Pe(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr.length - 1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Short>>> M Pf(@NotNull short[] sArr, @NotNull M destination, @NotNull Mf.l<? super Short, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (short s10 : sArr) {
            K invoke = keySelector.invoke(Short.valueOf(s10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Short.valueOf(s10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Pg(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return !(dArr.length == 0);
    }

    public static final int Ph(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                int i11 = iArr[length];
                if (!predicate.invoke(Integer.valueOf(i11)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return i11;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static final <R> List<R> Pi(@NotNull short[] sArr, @NotNull Mf.p<? super Integer, ? super Short, ? extends R> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(sArr.length);
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Short.valueOf(sArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Pj(char[] cArr, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Character.valueOf(cArr[0])).floatValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Character.valueOf(cArr[i10])).floatValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Pk(boolean[] zArr, Comparator<? super R> comparator, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Boolean.valueOf(zArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Float Pl(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        if (Le2 == 0) {
            return Float.valueOf(f10);
        }
        R invoke = selector.invoke(Float.valueOf(f10));
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                R invoke2 = selector.invoke(Float.valueOf(f11));
                if (invoke.compareTo(invoke2) > 0) {
                    f10 = f11;
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Pm(double[] dArr, Mf.l<? super Double, Double> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Double.valueOf(dArr[0])).doubleValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Double.valueOf(dArr[i10])).doubleValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    @NotNull
    public static final <T extends Comparable<? super T>> T Pn(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (t10.compareTo(t11) > 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final int[] Po(int[] iArr, Mf.p<? super Integer, ? super Integer, P0> action) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10]));
            i10++;
            i11++;
        }
        return iArr;
    }

    public static final double Pp(@NotNull double[] dArr, @NotNull Mf.p<? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = operation.invoke(Double.valueOf(d10), Double.valueOf(dArr[i10])).doubleValue();
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean Pq(@NotNull boolean[] zArr, @NotNull Mf.q<? super Integer, ? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Qe2 = Qe(zArr);
        if (Qe2 < 0) {
            return null;
        }
        boolean z10 = zArr[Qe2];
        for (int i10 = Qe2 - 1; i10 >= 0; i10--) {
            z10 = operation.n(Integer.valueOf(i10), Boolean.valueOf(zArr[i10]), Boolean.valueOf(z10)).booleanValue();
        }
        return Boolean.valueOf(z10);
    }

    @NotNull
    public static final <T> T[] Pr(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) C14983o.a(tArr, tArr.length);
        int Oe2 = Oe(tArr);
        if (Oe2 >= 0) {
            int i10 = 0;
            while (true) {
                tArr2[Oe2 - i10] = tArr[i10];
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return tArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ps(int[] iArr, R r10, Mf.q<? super Integer, ? super R, ? super Integer, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(iArr.length + 1);
        arrayList.add(r10);
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Integer.valueOf(iArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Integer Pt(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 1) {
            return Integer.valueOf(iArr[0]);
        }
        return null;
    }

    public static final void Pu(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length > 1) {
            C14985q.M3(fArr);
            or(fArr);
        }
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Boolean> Pv(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return gw(zArr, new C15420g.c(selector));
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Pw(byte[] bArr, Mf.l<? super Byte, Double> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (byte b10 : bArr) {
            d10 += selector.invoke(Byte.valueOf(b10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Double> Px(@NotNull double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= dArr.length) {
            return Yy(dArr);
        }
        if (i10 == 1) {
            return G.l(Double.valueOf(dArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (double d10 : dArr) {
            arrayList.add(Double.valueOf(d10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Float> Py(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return (HashSet) Ey(fArr, new HashSet(n0.j(fArr.length)));
    }

    @NotNull
    public static final Set<Short> Pz(@NotNull short[] sArr, @NotNull Iterable<Short> other) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Short> wz = wz(sArr);
        M.t0(wz, other);
        return wz;
    }

    @NotNull
    public static final InterfaceC3312m<Float> Q5(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr.length == 0 ? Xf.x.l() : new o(fArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M Q6(@NotNull char[] cArr, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (char c10 : cArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Character.valueOf(c10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final long Q7(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr[1];
    }

    public static final int Q8(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final List<Character> Q9(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Je2 = Je(cArr); -1 < Je2; Je2--) {
            if (!predicate.invoke(Character.valueOf(cArr[Je2])).booleanValue()) {
                return Ox(cArr, Je2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <V> List<V> QA(@NotNull long[] jArr, @NotNull long[] other, @NotNull Mf.p<? super Long, ? super Long, ? extends V> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(jArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Long.valueOf(jArr[i10]), Long.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Boolean> Qa(@NotNull boolean[] zArr, @NotNull Mf.p<? super Integer, ? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            boolean z10 = zArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Boolean.valueOf(z10)).booleanValue()) {
                arrayList.add(Boolean.valueOf(z10));
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    public static final Character Qb(char[] cArr, Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = cArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                char c10 = cArr[length];
                if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                    return Character.valueOf(c10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Qc(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (short s10 : sArr) {
            M.t0(arrayList, transform.invoke(Short.valueOf(s10)));
        }
        return arrayList;
    }

    public static final <R> R Qd(@NotNull char[] cArr, R r10, @NotNull Mf.p<? super Character, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Je2 = Je(cArr); Je2 >= 0; Je2--) {
            r10 = operation.invoke(Character.valueOf(cArr[Je2]), r10);
        }
        return r10;
    }

    public static final int Qe(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr.length - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Qf(@NotNull short[] sArr, @NotNull M destination, @NotNull Mf.l<? super Short, ? extends K> keySelector, @NotNull Mf.l<? super Short, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (short s10 : sArr) {
            K invoke = keySelector.invoke(Short.valueOf(s10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Short.valueOf(s10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Qg(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return !(fArr.length == 0);
    }

    public static long Qh(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length != 0) {
            return jArr[Ne(jArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @NotNull
    public static final <R> List<R> Qi(@NotNull boolean[] zArr, @NotNull Mf.p<? super Integer, ? super Boolean, ? extends R> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(zArr.length);
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            arrayList.add(transform.invoke(Integer.valueOf(i11), Boolean.valueOf(zArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Qj(double[] dArr, Mf.l<? super Double, Float> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Double.valueOf(dArr[0])).floatValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Double.valueOf(dArr[i10])).floatValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Qk(byte[] bArr, Comparator<? super R> comparator, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Byte.valueOf(bArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Integer Ql(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        if (Me2 == 0) {
            return Integer.valueOf(i10);
        }
        R invoke = selector.invoke(Integer.valueOf(i10));
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                R invoke2 = selector.invoke(Integer.valueOf(i12));
                if (invoke.compareTo(invoke2) > 0) {
                    i10 = i12;
                    invoke = invoke2;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Qm(float[] fArr, Mf.l<? super Float, Double> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Float.valueOf(fArr[0])).doubleValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Float.valueOf(fArr[i10])).doubleValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "minOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final short Qn(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (s10 > s11) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final long[] Qo(long[] jArr, Mf.p<? super Integer, ? super Long, P0> action) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i10]));
            i10++;
            i11++;
        }
        return jArr;
    }

    public static final float Qp(@NotNull float[] fArr, @NotNull Mf.p<? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = operation.invoke(Float.valueOf(f10), Float.valueOf(fArr[i10])).floatValue();
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte Qq(@NotNull byte[] bArr, @NotNull Mf.q<? super Integer, ? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ie2 = Ie(bArr);
        if (Ie2 < 0) {
            return null;
        }
        byte b10 = bArr[Ie2];
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            b10 = operation.n(Integer.valueOf(i10), Byte.valueOf(bArr[i10]), Byte.valueOf(b10)).byteValue();
        }
        return Byte.valueOf(b10);
    }

    @NotNull
    public static short[] Qr(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return sArr;
        }
        short[] sArr2 = new short[sArr.length];
        int Pe2 = Pe(sArr);
        if (Pe2 >= 0) {
            int i10 = 0;
            while (true) {
                sArr2[Pe2 - i10] = sArr[i10];
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return sArr2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Qs(long[] jArr, R r10, Mf.q<? super Integer, ? super R, ? super Long, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(jArr.length + 1);
        arrayList.add(r10);
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Long.valueOf(jArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Integer Qt(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Integer num = null;
        boolean z10 = false;
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                num = Integer.valueOf(i10);
                z10 = true;
            }
        }
        if (z10) {
            return num;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Qu(@NotNull float[] fArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        C14985q.N3(fArr, i10, i11);
        pr(fArr, i10, i11);
    }

    @NotNull
    public static final List<Byte> Qv(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.G3(copyOf);
        return Ar(copyOf);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Qw(char[] cArr, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (char c10 : cArr) {
            d10 += selector.invoke(Character.valueOf(c10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Float> Qx(@NotNull float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= fArr.length) {
            return Zy(fArr);
        }
        if (i10 == 1) {
            return G.l(Float.valueOf(fArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (float f10 : fArr) {
            arrayList.add(Float.valueOf(f10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Integer> Qy(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return (HashSet) Fy(iArr, new HashSet(n0.j(iArr.length)));
    }

    @NotNull
    public static final Set<Boolean> Qz(@NotNull boolean[] zArr, @NotNull Iterable<Boolean> other) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Boolean> xz = xz(zArr);
        M.t0(xz, other);
        return xz;
    }

    @NotNull
    public static final InterfaceC3312m<Integer> R5(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr.length == 0 ? Xf.x.l() : new m(iArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M R6(@NotNull double[] dArr, @NotNull M destination, @NotNull Mf.l<? super Double, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (double d10 : dArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Double.valueOf(d10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final <T> T R7(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr[1];
    }

    @Ef.f
    public static final int R8(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr.length;
    }

    @NotNull
    public static final List<Double> R9(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Ke2 = Ke(dArr); -1 < Ke2; Ke2--) {
            if (!predicate.invoke(Double.valueOf(dArr[Ke2])).booleanValue()) {
                return Px(dArr, Ke2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <R> List<nf.Z<Long, R>> RA(@NotNull long[] jArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(jArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            long j10 = jArr[i10];
            arrayList.add(nf.v0.a(Long.valueOf(j10), other[i10]));
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Byte>> C Ra(@NotNull byte[] bArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            byte b10 = bArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Byte.valueOf(b10)).booleanValue()) {
                destination.add(Byte.valueOf(b10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    public static final Double Rb(double[] dArr, Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = dArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                double d10 = dArr[length];
                if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                    return Double.valueOf(d10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @NotNull
    public static final <R> List<R> Rc(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (boolean z10 : zArr) {
            M.t0(arrayList, transform.invoke(Boolean.valueOf(z10)));
        }
        return arrayList;
    }

    public static final <R> R Rd(@NotNull double[] dArr, R r10, @NotNull Mf.p<? super Double, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Ke2 = Ke(dArr); Ke2 >= 0; Ke2--) {
            r10 = operation.invoke(Double.valueOf(dArr[Ke2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final byte Re(byte[] bArr, int i10, Mf.l<? super Integer, Byte> defaultValue) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= bArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).byteValue() : bArr[i10];
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, List<Boolean>>> M Rf(@NotNull boolean[] zArr, @NotNull M destination, @NotNull Mf.l<? super Boolean, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (boolean z10 : zArr) {
            K invoke = keySelector.invoke(Boolean.valueOf(z10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(Boolean.valueOf(z10));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Rg(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return !(iArr.length == 0);
    }

    public static final long Rh(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = jArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                long j10 = jArr[length];
                if (!predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return j10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @NotNull
    public static final <T, R> List<R> Ri(@NotNull T[] tArr, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i11 + 1;
            R invoke = transform.invoke(Integer.valueOf(i11), tArr[i10]);
            if (invoke != null) {
                arrayList.add(invoke);
            }
            i10++;
            i11 = i12;
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Rj(float[] fArr, Mf.l<? super Float, Float> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Float.valueOf(fArr[0])).floatValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Float.valueOf(fArr[i10])).floatValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Rk(char[] cArr, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(cArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Long Rl(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        if (Ne2 == 0) {
            return Long.valueOf(j10);
        }
        R invoke = selector.invoke(Long.valueOf(j10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                R invoke2 = selector.invoke(Long.valueOf(j11));
                if (invoke.compareTo(invoke2) > 0) {
                    j10 = j11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Rm(int[] iArr, Mf.l<? super Integer, Double> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Integer.valueOf(iArr[0])).doubleValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Integer.valueOf(iArr[i10])).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean Rn(@NotNull boolean[] zArr, @NotNull Comparator<? super Boolean> comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                if (comparator.compare(Boolean.valueOf(z10), Boolean.valueOf(z11)) > 0) {
                    z10 = z11;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <T> T[] Ro(T[] tArr, Mf.p<? super Integer, ? super T, P0> action) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), tArr[i10]);
            i10++;
            i11++;
        }
        return tArr;
    }

    public static final int Rp(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                i10 = operation.invoke(Integer.valueOf(i10), Integer.valueOf(iArr[i11])).intValue();
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character Rq(@NotNull char[] cArr, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Je2 = Je(cArr);
        if (Je2 < 0) {
            return null;
        }
        char c10 = cArr[Je2];
        for (int i10 = Je2 - 1; i10 >= 0; i10--) {
            c10 = operation.n(Integer.valueOf(i10), Character.valueOf(cArr[i10]), Character.valueOf(c10)).charValue();
        }
        return Character.valueOf(c10);
    }

    @NotNull
    public static final boolean[] Rr(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length == 0) {
            return zArr;
        }
        boolean[] zArr2 = new boolean[zArr.length];
        int Qe2 = Qe(zArr);
        if (Qe2 >= 0) {
            int i10 = 0;
            while (true) {
                zArr2[Qe2 - i10] = zArr[i10];
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return zArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> Rs(@NotNull T[] tArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(tArr.length + 1);
        arrayList.add(r10);
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, tArr[i10]);
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Long Rt(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 1) {
            return Long.valueOf(jArr[0]);
        }
        return null;
    }

    public static final void Ru(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length > 1) {
            C14985q.O3(iArr);
            qr(iArr);
        }
    }

    @NotNull
    public static final List<Character> Rv(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        char[] copyOf = Arrays.copyOf(cArr, cArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.I3(copyOf);
        return Br(copyOf);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Rw(double[] dArr, Mf.l<? super Double, Double> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (double d11 : dArr) {
            d10 += selector.invoke(Double.valueOf(d11)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static List<Integer> Rx(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= iArr.length) {
            return az(iArr);
        }
        if (i10 == 1) {
            return G.l(Integer.valueOf(iArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (int i12 : iArr) {
            arrayList.add(Integer.valueOf(i12));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Long> Ry(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return (HashSet) Gy(jArr, new HashSet(n0.j(jArr.length)));
    }

    @NotNull
    public static final Iterable<C14968d0<Byte>> Rz(@NotNull final byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator bA;
                bA = C14960A.bA(bArr);
                return bA;
            }
        });
    }

    @NotNull
    public static final InterfaceC3312m<Long> S5(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr.length == 0 ? Xf.x.l() : new n(jArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M S6(@NotNull float[] fArr, @NotNull M destination, @NotNull Mf.l<? super Float, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (float f10 : fArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Float.valueOf(f10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final short S7(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr[1];
    }

    public static final int S8(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final List<Float> S9(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Le2 = Le(fArr); -1 < Le2; Le2--) {
            if (!predicate.invoke(Float.valueOf(fArr[Le2])).booleanValue()) {
                return Qx(fArr, Le2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <R, V> List<V> SA(@NotNull long[] jArr, @NotNull R[] other, @NotNull Mf.p<? super Long, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(jArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Long.valueOf(jArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Character>> C Sa(@NotNull char[] cArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char c10 = cArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Character.valueOf(c10)).booleanValue()) {
                destination.add(Character.valueOf(c10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    public static final Float Sb(float[] fArr, Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = fArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                float f10 = fArr[length];
                if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                    return Float.valueOf(f10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Sc(byte[] bArr, Mf.p<? super Integer, ? super Byte, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Byte.valueOf(bArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Sd(@NotNull float[] fArr, R r10, @NotNull Mf.p<? super Float, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Le2 = Le(fArr); Le2 >= 0; Le2--) {
            r10 = operation.invoke(Float.valueOf(fArr[Le2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final char Se(char[] cArr, int i10, Mf.l<? super Integer, Character> defaultValue) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= cArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).charValue() : cArr[i10];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, List<V>>> M Sf(@NotNull boolean[] zArr, @NotNull M destination, @NotNull Mf.l<? super Boolean, ? extends K> keySelector, @NotNull Mf.l<? super Boolean, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (boolean z10 : zArr) {
            K invoke = keySelector.invoke(Boolean.valueOf(z10));
            Object obj = destination.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                destination.put(invoke, obj);
            }
            ((List) obj).add(valueTransform.invoke(Boolean.valueOf(z10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean Sg(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return !(jArr.length == 0);
    }

    public static final <T> T Sh(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length != 0) {
            return tArr[Oe(tArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C Si(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i11 + 1;
            R invoke = transform.invoke(Integer.valueOf(i11), tArr[i10]);
            if (invoke != null) {
                destination.add(invoke);
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Sj(int[] iArr, Mf.l<? super Integer, Float> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Integer.valueOf(iArr[0])).floatValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Integer.valueOf(iArr[i10])).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Sk(double[] dArr, Comparator<? super R> comparator, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Double.valueOf(dArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T, R extends Comparable<? super R>> T Sl(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        if (Oe2 == 0) {
            return t10;
        }
        R invoke = selector.invoke(t10);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                R invoke2 = selector.invoke(t11);
                if (invoke.compareTo(invoke2) > 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Sm(long[] jArr, Mf.l<? super Long, Double> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Long.valueOf(jArr[0])).doubleValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Long.valueOf(jArr[i10])).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte Sn(@NotNull byte[] bArr, @NotNull Comparator<? super Byte> comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (comparator.compare(Byte.valueOf(b10), Byte.valueOf(b11)) > 0) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final short[] So(short[] sArr, Mf.p<? super Integer, ? super Short, P0> action) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Short.valueOf(sArr[i10]));
            i10++;
            i11++;
        }
        return sArr;
    }

    public static final long Sp(@NotNull long[] jArr, @NotNull Mf.p<? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                j10 = operation.invoke(Long.valueOf(j10), Long.valueOf(jArr[i10])).longValue();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double Sq(@NotNull double[] dArr, @NotNull Mf.q<? super Integer, ? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ke2 = Ke(dArr);
        if (Ke2 < 0) {
            return null;
        }
        double d10 = dArr[Ke2];
        for (int i10 = Ke2 - 1; i10 >= 0; i10--) {
            d10 = operation.n(Integer.valueOf(i10), Double.valueOf(dArr[i10]), Double.valueOf(d10)).doubleValue();
        }
        return Double.valueOf(d10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Sr(byte[] bArr, R r10, Mf.p<? super R, ? super Byte, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(bArr.length + 1);
        arrayList.add(r10);
        for (byte b10 : bArr) {
            r10 = operation.invoke(r10, Byte.valueOf(b10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ss(short[] sArr, R r10, Mf.q<? super Integer, ? super R, ? super Short, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(sArr.length + 1);
        arrayList.add(r10);
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Short.valueOf(sArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static final Long St(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Long l10 = null;
        boolean z10 = false;
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                l10 = Long.valueOf(j10);
                z10 = true;
            }
        }
        if (z10) {
            return l10;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Su(@NotNull int[] iArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        C14985q.P3(iArr, i10, i11);
        rr(iArr, i10, i11);
    }

    @NotNull
    public static final List<Double> Sv(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double[] copyOf = Arrays.copyOf(dArr, dArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.K3(copyOf);
        return Cr(copyOf);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Sw(float[] fArr, Mf.l<? super Float, Double> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (float f10 : fArr) {
            d10 += selector.invoke(Float.valueOf(f10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Long> Sx(@NotNull long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= jArr.length) {
            return bz(jArr);
        }
        if (i10 == 1) {
            return G.l(Long.valueOf(jArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (long j10 : jArr) {
            arrayList.add(Long.valueOf(j10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T> HashSet<T> Sy(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (HashSet) Hy(tArr, new HashSet(n0.j(tArr.length)));
    }

    @NotNull
    public static final Iterable<C14968d0<Character>> Sz(@NotNull final char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator iA;
                iA = C14960A.iA(cArr);
                return iA;
            }
        });
    }

    @NotNull
    public static <T> InterfaceC3312m<T> T5(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr.length == 0 ? Xf.x.l() : new j(tArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M T6(@NotNull int[] iArr, @NotNull M destination, @NotNull Mf.l<? super Integer, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 : iArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Integer.valueOf(i10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final boolean T7(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr[1];
    }

    @Ef.f
    public static final int T8(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr.length;
    }

    @NotNull
    public static final List<Integer> T9(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Me2 = Me(iArr); -1 < Me2; Me2--) {
            if (!predicate.invoke(Integer.valueOf(iArr[Me2])).booleanValue()) {
                return Rx(iArr, Me2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <T, R> List<nf.Z<T, R>> TA(@NotNull T[] tArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = tArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(tArr[i10], r10));
            i10++;
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Double>> C Ta(@NotNull double[] dArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            double d10 = dArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Double.valueOf(d10)).booleanValue()) {
                destination.add(Double.valueOf(d10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    public static final Integer Tb(int[] iArr, Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                int i11 = iArr[length];
                if (predicate.invoke(Integer.valueOf(i11)).booleanValue()) {
                    return Integer.valueOf(i11);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Tc(char[] cArr, Mf.p<? super Integer, ? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Character.valueOf(cArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Td(@NotNull int[] iArr, R r10, @NotNull Mf.p<? super Integer, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Me2 = Me(iArr); Me2 >= 0; Me2--) {
            r10 = operation.invoke(Integer.valueOf(iArr[Me2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final double Te(double[] dArr, int i10, Mf.l<? super Integer, Double> defaultValue) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= dArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).doubleValue() : dArr[i10];
    }

    @InterfaceC14422l0(version = "1.1")
    @NotNull
    public static final <T, K> Z<T, K> Tf(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        return new s(tArr, keySelector);
    }

    @Ef.f
    public static final <T> boolean Tg(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return !(tArr.length == 0);
    }

    public static final <T> T Th(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = tArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                T t10 = tArr[length];
                if (!predicate.invoke(t10).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return t10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C Ti(@NotNull byte[] bArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Byte, ? extends R> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Byte.valueOf(bArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Tj(long[] jArr, Mf.l<? super Long, Float> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Long.valueOf(jArr[0])).floatValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Long.valueOf(jArr[i10])).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Tk(float[] fArr, Comparator<? super R> comparator, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Float.valueOf(fArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Short Tl(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        if (Pe2 == 0) {
            return Short.valueOf(s10);
        }
        R invoke = selector.invoke(Short.valueOf(s10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                R invoke2 = selector.invoke(Short.valueOf(s11));
                if (invoke.compareTo(invoke2) > 0) {
                    s10 = s11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Double Tm(T[] tArr, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(tArr[0]).doubleValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(tArr[i10]).doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character Tn(@NotNull char[] cArr, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (comparator.compare(Character.valueOf(c10), Character.valueOf(c11)) > 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final boolean[] To(boolean[] zArr, Mf.p<? super Integer, ? super Boolean, P0> action) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Boolean.valueOf(zArr[i10]));
            i10++;
            i11++;
        }
        return zArr;
    }

    public static final <S, T extends S> S Tp(@NotNull T[] tArr, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        S s10 = (Object) tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                s10 = operation.invoke(s10, (Object) tArr[i10]);
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float Tq(@NotNull float[] fArr, @NotNull Mf.q<? super Integer, ? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Le2 = Le(fArr);
        if (Le2 < 0) {
            return null;
        }
        float f10 = fArr[Le2];
        for (int i10 = Le2 - 1; i10 >= 0; i10--) {
            f10 = operation.n(Integer.valueOf(i10), Float.valueOf(fArr[i10]), Float.valueOf(f10)).floatValue();
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Tr(char[] cArr, R r10, Mf.p<? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(cArr.length + 1);
        arrayList.add(r10);
        for (char c10 : cArr) {
            r10 = operation.invoke(r10, Character.valueOf(c10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ts(boolean[] zArr, R r10, Mf.q<? super Integer, ? super R, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(zArr.length + 1);
        arrayList.add(r10);
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Boolean.valueOf(zArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @Nullable
    public static <T> T Tt(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final void Tu(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length > 1) {
            C14985q.Q3(jArr);
            sr(jArr);
        }
    }

    @NotNull
    public static final List<Float> Tv(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.M3(copyOf);
        return Dr(copyOf);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Tw(int[] iArr, Mf.l<? super Integer, Double> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (int i10 : iArr) {
            d10 += selector.invoke(Integer.valueOf(i10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final <T> List<T> Tx(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= tArr.length) {
            return cz(tArr);
        }
        if (i10 == 1) {
            return G.l(tArr[0]);
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (T t10 : tArr) {
            arrayList.add(t10);
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Short> Ty(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return (HashSet) Iy(sArr, new HashSet(n0.j(sArr.length)));
    }

    @NotNull
    public static final Iterable<C14968d0<Double>> Tz(@NotNull final double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator gA;
                gA = C14960A.gA(dArr);
                return gA;
            }
        });
    }

    @NotNull
    public static final InterfaceC3312m<Short> U5(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr.length == 0 ? Xf.x.l() : new l(sArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M U6(@NotNull long[] jArr, @NotNull M destination, @NotNull Mf.l<? super Long, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (long j10 : jArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Long.valueOf(j10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final byte U7(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr[2];
    }

    public static final int U8(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final List<Long> U9(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Ne2 = Ne(jArr); -1 < Ne2; Ne2--) {
            if (!predicate.invoke(Long.valueOf(jArr[Ne2])).booleanValue()) {
                return Sx(jArr, Ne2 + 1);
            }
        }
        return H.J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, R, V> List<V> UA(@NotNull T[] tArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super T, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = tArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(tArr[i10], r10));
            i10++;
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Float>> C Ua(@NotNull float[] fArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            float f10 = fArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Float.valueOf(f10)).booleanValue()) {
                destination.add(Float.valueOf(f10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    public static final Long Ub(long[] jArr, Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = jArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                long j10 = jArr[length];
                if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                    return Long.valueOf(j10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Uc(double[] dArr, Mf.p<? super Integer, ? super Double, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Ud(@NotNull long[] jArr, R r10, @NotNull Mf.p<? super Long, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Ne2 = Ne(jArr); Ne2 >= 0; Ne2--) {
            r10 = operation.invoke(Long.valueOf(jArr[Ne2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final float Ue(float[] fArr, int i10, Mf.l<? super Integer, Float> defaultValue) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= fArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).floatValue() : fArr[i10];
    }

    public static int Uf(@NotNull byte[] bArr, byte b10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (b10 == bArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @Ef.f
    public static final boolean Ug(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return !(sArr.length == 0);
    }

    public static short Uh(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length != 0) {
            return sArr[Pe(sArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C Ui(@NotNull char[] cArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Character.valueOf(cArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> float Uj(T[] tArr, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(tArr[0]).floatValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(tArr[i10]).floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Uk(int[] iArr, Comparator<? super R> comparator, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Integer.valueOf(iArr[i10]));
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

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> byte Ul(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        if (Ie2 == 0) {
            return b10;
        }
        R invoke = selector.invoke(Byte.valueOf(b10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                R invoke2 = selector.invoke(Byte.valueOf(b11));
                if (invoke.compareTo(invoke2) > 0) {
                    b10 = b11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Um(short[] sArr, Mf.l<? super Short, Double> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Short.valueOf(sArr[0])).doubleValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Short.valueOf(sArr[i10])).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double Un(@NotNull double[] dArr, @NotNull Comparator<? super Double> comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                if (comparator.compare(Double.valueOf(d10), Double.valueOf(d11)) > 0) {
                    d10 = d11;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @NotNull
    public static final nf.Z<List<Byte>, List<Byte>> Uo(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                arrayList.add(Byte.valueOf(b10));
            } else {
                arrayList2.add(Byte.valueOf(b10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final short Up(@NotNull short[] sArr, @NotNull Mf.p<? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                s10 = operation.invoke(Short.valueOf(s10), Short.valueOf(sArr[i10])).shortValue();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer Uq(@NotNull int[] iArr, @NotNull Mf.q<? super Integer, ? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Me2 = Me(iArr);
        if (Me2 < 0) {
            return null;
        }
        int i10 = iArr[Me2];
        for (int i11 = Me2 - 1; i11 >= 0; i11--) {
            i10 = operation.n(Integer.valueOf(i11), Integer.valueOf(iArr[i11]), Integer.valueOf(i10)).intValue();
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Ur(double[] dArr, R r10, Mf.p<? super R, ? super Double, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(dArr.length + 1);
        arrayList.add(r10);
        for (double d10 : dArr) {
            r10 = operation.invoke(r10, Double.valueOf(d10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Us(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        Vs(bArr, Tf.f.f24956b);
    }

    @Nullable
    public static final <T> T Ut(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        T t10 = null;
        boolean z10 = false;
        for (T t11 : tArr) {
            if (predicate.invoke(t11).booleanValue()) {
                if (z10) {
                    return null;
                }
                z10 = true;
                t10 = t11;
            }
        }
        if (z10) {
            return t10;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Uu(@NotNull long[] jArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        C14985q.R3(jArr, i10, i11);
        tr(jArr, i10, i11);
    }

    @NotNull
    public static final List<Integer> Uv(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.O3(copyOf);
        return Er(copyOf);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Uw(long[] jArr, Mf.l<? super Long, Double> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (long j10 : jArr) {
            d10 += selector.invoke(Long.valueOf(j10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Short> Ux(@NotNull short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= sArr.length) {
            return dz(sArr);
        }
        if (i10 == 1) {
            return G.l(Short.valueOf(sArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (short s10 : sArr) {
            arrayList.add(Short.valueOf(s10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final HashSet<Boolean> Uy(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return (HashSet) Jy(zArr, new HashSet(n0.j(zArr.length)));
    }

    @NotNull
    public static final Iterable<C14968d0<Float>> Uz(@NotNull final float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator fA;
                fA = C14960A.fA(fArr);
                return fA;
            }
        });
    }

    @NotNull
    public static final InterfaceC3312m<Boolean> V5(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr.length == 0 ? Xf.x.l() : new q(zArr);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, K, V, M extends Map<? super K, ? super V>> M V6(@NotNull T[] tArr, @NotNull M destination, @NotNull Mf.l<? super T, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (T t10 : tArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(t10);
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final char V7(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr[2];
    }

    @Ef.f
    public static final int V8(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr.length;
    }

    @NotNull
    public static final <T> List<T> V9(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Oe2 = Oe(tArr); -1 < Oe2; Oe2--) {
            if (!predicate.invoke(tArr[Oe2]).booleanValue()) {
                return Tx(tArr, Oe2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <T, R> List<nf.Z<T, R>> VA(@NotNull T[] tArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(tArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(tArr[i10], other[i10]));
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Integer>> C Va(@NotNull int[] iArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = iArr[i10];
            int i13 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Integer.valueOf(i12)).booleanValue()) {
                destination.add(Integer.valueOf(i12));
            }
            i10++;
            i11 = i13;
        }
        return destination;
    }

    @Ef.f
    public static final <T> T Vb(T[] tArr, Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = tArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                T t10 = tArr[length];
                if (predicate.invoke(t10).booleanValue()) {
                    return t10;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Vc(float[] fArr, Mf.p<? super Integer, ? super Float, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Float.valueOf(fArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> R Vd(@NotNull T[] tArr, R r10, @NotNull Mf.p<? super T, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Oe2 = Oe(tArr); Oe2 >= 0; Oe2--) {
            r10 = operation.invoke(tArr[Oe2], r10);
        }
        return r10;
    }

    @Ef.f
    public static final int Ve(int[] iArr, int i10, Mf.l<? super Integer, Integer> defaultValue) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= iArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).intValue() : iArr[i10];
    }

    public static final int Vf(@NotNull char[] cArr, char c10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (c10 == cArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @Ef.f
    public static final boolean Vg(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return !(zArr.length == 0);
    }

    public static final short Vh(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = sArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                short s10 = sArr[length];
                if (!predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return s10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C Vi(@NotNull double[] dArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Double, ? extends R> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Vj(short[] sArr, Mf.l<? super Short, Float> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Short.valueOf(sArr[0])).floatValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Short.valueOf(sArr[i10])).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Vk(long[] jArr, Comparator<? super R> comparator, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Long.valueOf(jArr[i10]));
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

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> char Vl(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        if (Je2 == 0) {
            return c10;
        }
        R invoke = selector.invoke(Character.valueOf(c10));
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                R invoke2 = selector.invoke(Character.valueOf(c11));
                if (invoke.compareTo(invoke2) > 0) {
                    c10 = c11;
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double Vm(boolean[] zArr, Mf.l<? super Boolean, Double> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Boolean.valueOf(zArr[0])).doubleValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Boolean.valueOf(zArr[i10])).doubleValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float Vn(@NotNull float[] fArr, @NotNull Comparator<? super Float> comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                if (comparator.compare(Float.valueOf(f10), Float.valueOf(f11)) > 0) {
                    f10 = f11;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @NotNull
    public static final nf.Z<List<Character>, List<Character>> Vo(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                arrayList.add(Character.valueOf(c10));
            } else {
                arrayList2.add(Character.valueOf(c10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final boolean Vp(@NotNull boolean[] zArr, @NotNull Mf.p<? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                z10 = operation.invoke(Boolean.valueOf(z10), Boolean.valueOf(zArr[i10])).booleanValue();
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return z10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long Vq(@NotNull long[] jArr, @NotNull Mf.q<? super Integer, ? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ne2 = Ne(jArr);
        if (Ne2 < 0) {
            return null;
        }
        long j10 = jArr[Ne2];
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            j10 = operation.n(Integer.valueOf(i10), Long.valueOf(jArr[i10]), Long.valueOf(j10)).longValue();
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Vr(float[] fArr, R r10, Mf.p<? super R, ? super Float, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(fArr.length + 1);
        arrayList.add(r10);
        for (float f10 : fArr) {
            r10 = operation.invoke(r10, Float.valueOf(f10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Vs(@NotNull byte[] bArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Ie2 = Ie(bArr); Ie2 > 0; Ie2--) {
            int m10 = random.m(Ie2 + 1);
            byte b10 = bArr[Ie2];
            bArr[Ie2] = bArr[m10];
            bArr[m10] = b10;
        }
    }

    @Nullable
    public static final Short Vt(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 1) {
            return Short.valueOf(sArr[0]);
        }
        return null;
    }

    public static final <T extends Comparable<? super T>> void Vu(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        C14985q.h4(tArr, C15420g.x());
    }

    @NotNull
    public static final List<Long> Vv(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.Q3(copyOf);
        return Fr(copyOf);
    }

    @Lf.j(name = "sumOfDouble")
    public static final double Vw(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double d10 = 0.0d;
        for (Double d11 : dArr) {
            d10 += d11.doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Boolean> Vx(@NotNull boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        if (i10 >= zArr.length) {
            return ez(zArr);
        }
        if (i10 == 1) {
            return G.l(Boolean.valueOf(zArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (boolean z10 : zArr) {
            arrayList.add(Boolean.valueOf(z10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final int[] Vy(@NotNull Integer[] numArr) {
        kotlin.jvm.internal.M.p(numArr, "<this>");
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = numArr[i10].intValue();
        }
        return iArr;
    }

    @NotNull
    public static final Iterable<C14968d0<Integer>> Vz(@NotNull final int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator dA;
                dA = C14960A.dA(iArr);
                return dA;
            }
        });
    }

    @NotNull
    public static final <K, V> Map<K, V> W5(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(bArr.length), 16));
        for (byte b10 : bArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Byte.valueOf(b10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M W6(@NotNull short[] sArr, @NotNull M destination, @NotNull Mf.l<? super Short, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (short s10 : sArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Short.valueOf(s10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final double W7(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr[2];
    }

    public static final int W8(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (int i11 : iArr) {
            if (predicate.invoke(Integer.valueOf(i11)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final List<Short> W9(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Pe2 = Pe(sArr); -1 < Pe2; Pe2--) {
            if (!predicate.invoke(Short.valueOf(sArr[Pe2])).booleanValue()) {
                return Ux(sArr, Pe2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <T, R, V> List<V> WA(@NotNull T[] tArr, @NotNull R[] other, @NotNull Mf.p<? super T, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(tArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(tArr[i10], other[i10]));
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Long>> C Wa(@NotNull long[] jArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            long j10 = jArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Long.valueOf(j10)).booleanValue()) {
                destination.add(Long.valueOf(j10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    @Ef.f
    public static final Short Wb(short[] sArr, Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = sArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                short s10 = sArr[length];
                if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                    return Short.valueOf(s10);
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return null;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Wc(int[] iArr, Mf.p<? super Integer, ? super Integer, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Wd(@NotNull short[] sArr, R r10, @NotNull Mf.p<? super Short, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Pe2 = Pe(sArr); Pe2 >= 0; Pe2--) {
            r10 = operation.invoke(Short.valueOf(sArr[Pe2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final long We(long[] jArr, int i10, Mf.l<? super Integer, Long> defaultValue) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= jArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).longValue() : jArr[i10];
    }

    @InterfaceC14427o(message = "The function has unclear behavior when searching for NaN or zero values and will be removed soon. Use 'indexOfFirst { it == element }' instead to continue using this behavior, or '.asList().indexOf(element: T)' to get the same search behavior as in a list.", replaceWith = @InterfaceC14412g0(expression = "indexOfFirst { it == element }", imports = {}))
    @InterfaceC14429p(errorSince = "1.6", hiddenSince = "1.7", warningSince = "1.4")
    public static final int Wf(double[] dArr, double d10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (d10 == dArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A Wg(@NotNull byte[] bArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Byte, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (byte b10 : bArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Byte.valueOf(b10)));
            } else {
                buffer.append(String.valueOf((int) b10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final boolean Wh(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length != 0) {
            return zArr[Qe(zArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C Wi(@NotNull float[] fArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Float, ? extends R> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Float.valueOf(fArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float Wj(boolean[] zArr, Mf.l<? super Boolean, Float> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Boolean.valueOf(zArr[0])).floatValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Boolean.valueOf(zArr[i10])).floatValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R Wk(T[] tArr, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(tArr[i10]);
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> double Wl(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        if (Ke2 == 0) {
            return d10;
        }
        R invoke = selector.invoke(Double.valueOf(d10));
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                R invoke2 = selector.invoke(Double.valueOf(d11));
                if (invoke.compareTo(invoke2) > 0) {
                    d10 = d11;
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Wm(byte[] bArr, Mf.l<? super Byte, Float> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Byte.valueOf(bArr[0])).floatValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Byte.valueOf(bArr[i10])).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer Wn(@NotNull int[] iArr, @NotNull Comparator<? super Integer> comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (comparator.compare(Integer.valueOf(i10), Integer.valueOf(i12)) > 0) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @NotNull
    public static final nf.Z<List<Double>, List<Double>> Wo(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                arrayList.add(Double.valueOf(d10));
            } else {
                arrayList2.add(Double.valueOf(d10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final byte Wp(@NotNull byte[] bArr, @NotNull Mf.q<? super Integer, ? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                b10 = operation.n(Integer.valueOf(i10), Byte.valueOf(b10), Byte.valueOf(bArr[i10])).byteValue();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S Wq(@NotNull T[] tArr, @NotNull Mf.q<? super Integer, ? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Oe2 = Oe(tArr);
        if (Oe2 < 0) {
            return null;
        }
        S s10 = (S) tArr[Oe2];
        for (int i10 = Oe2 - 1; i10 >= 0; i10--) {
            s10 = operation.n(Integer.valueOf(i10), (Object) tArr[i10], s10);
        }
        return s10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Wr(int[] iArr, R r10, Mf.p<? super R, ? super Integer, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(iArr.length + 1);
        arrayList.add(r10);
        for (int i10 : iArr) {
            r10 = operation.invoke(r10, Integer.valueOf(i10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Ws(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        Xs(cArr, Tf.f.f24956b);
    }

    @Nullable
    public static final Short Wt(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Short sh2 = null;
        boolean z10 = false;
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                if (z10) {
                    return null;
                }
                sh2 = Short.valueOf(s10);
                z10 = true;
            }
        }
        if (z10) {
            return sh2;
        }
        return null;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final <T extends Comparable<? super T>> void Wu(@NotNull T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        C14985q.i4(tArr, C15420g.x(), i10, i11);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> List<T> Wv(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return ew(tArr, C15420g.x());
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double Ww(T[] tArr, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (T t10 : tArr) {
            d10 += selector.invoke(t10).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Byte> Wx(@NotNull byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = bArr.length;
        if (i10 >= length) {
            return Wy(bArr);
        }
        if (i10 == 1) {
            return G.l(Byte.valueOf(bArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Byte.valueOf(bArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Byte> Wy(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length;
        return length != 0 ? length != 1 ? gz(bArr) : G.l(Byte.valueOf(bArr[0])) : H.J();
    }

    @NotNull
    public static final Iterable<C14968d0<Long>> Wz(@NotNull final long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator eA;
                eA = C14960A.eA(jArr);
                return eA;
            }
        });
    }

    @NotNull
    public static final <K, V> Map<K, V> X5(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(cArr.length), 16));
        for (char c10 : cArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Character.valueOf(c10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M X6(@NotNull boolean[] zArr, @NotNull M destination, @NotNull Mf.l<? super Boolean, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (boolean z10 : zArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Boolean.valueOf(z10));
            destination.put(invoke.e(), invoke.f());
        }
        return destination;
    }

    @Ef.f
    public static final float X7(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr[2];
    }

    @Ef.f
    public static final int X8(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr.length;
    }

    @NotNull
    public static final List<Boolean> X9(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Qe2 = Qe(zArr); -1 < Qe2; Qe2--) {
            if (!predicate.invoke(Boolean.valueOf(zArr[Qe2])).booleanValue()) {
                return Vx(zArr, Qe2 + 1);
            }
        }
        return H.J();
    }

    @NotNull
    public static final <R> List<nf.Z<Short, R>> XA(@NotNull short[] sArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = sArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Short.valueOf(sArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C Xa(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            T t10 = tArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), t10).booleanValue()) {
                destination.add(t10);
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    public static byte Xb(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length != 0) {
            return bArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Xc(long[] jArr, Mf.p<? super Integer, ? super Long, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Xd(@NotNull boolean[] zArr, R r10, @NotNull Mf.p<? super Boolean, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Qe2 = Qe(zArr); Qe2 >= 0; Qe2--) {
            r10 = operation.invoke(Boolean.valueOf(zArr[Qe2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final <T> T Xe(T[] tArr, int i10, Mf.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= tArr.length) ? defaultValue.invoke(Integer.valueOf(i10)) : tArr[i10];
    }

    @InterfaceC14427o(message = "The function has unclear behavior when searching for NaN or zero values and will be removed soon. Use 'indexOfFirst { it == element }' instead to continue using this behavior, or '.asList().indexOf(element: T)' to get the same search behavior as in a list.", replaceWith = @InterfaceC14412g0(expression = "indexOfFirst { it == element }", imports = {}))
    @InterfaceC14429p(errorSince = "1.6", hiddenSince = "1.7", warningSince = "1.4")
    public static final int Xf(float[] fArr, float f10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (f10 == fArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A Xg(@NotNull char[] cArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Character, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (char c10 : cArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Character.valueOf(c10)));
            } else {
                buffer.append(c10);
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final boolean Xh(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = zArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                boolean z10 = zArr[length];
                if (!predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                } else {
                    return z10;
                }
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C Xi(@NotNull int[] iArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Integer, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Xj(byte[] bArr, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(Byte.valueOf(bArr[i10]));
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

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Xk(short[] sArr, Comparator<? super R> comparator, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Short.valueOf(sArr[i10]));
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

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> float Xl(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        if (Le2 == 0) {
            return f10;
        }
        R invoke = selector.invoke(Float.valueOf(f10));
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                R invoke2 = selector.invoke(Float.valueOf(f11));
                if (invoke.compareTo(invoke2) > 0) {
                    f10 = f11;
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Xm(char[] cArr, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Character.valueOf(cArr[0])).floatValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Character.valueOf(cArr[i10])).floatValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long Xn(@NotNull long[] jArr, @NotNull Comparator<? super Long> comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (comparator.compare(Long.valueOf(j10), Long.valueOf(j11)) > 0) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @NotNull
    public static final nf.Z<List<Float>, List<Float>> Xo(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                arrayList.add(Float.valueOf(f10));
            } else {
                arrayList2.add(Float.valueOf(f10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final char Xp(@NotNull char[] cArr, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                c10 = operation.n(Integer.valueOf(i10), Character.valueOf(c10), Character.valueOf(cArr[i10])).charValue();
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short Xq(@NotNull short[] sArr, @NotNull Mf.q<? super Integer, ? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Pe2 = Pe(sArr);
        if (Pe2 < 0) {
            return null;
        }
        short s10 = sArr[Pe2];
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            s10 = operation.n(Integer.valueOf(i10), Short.valueOf(sArr[i10]), Short.valueOf(s10)).shortValue();
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Xr(long[] jArr, R r10, Mf.p<? super R, ? super Long, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(jArr.length + 1);
        arrayList.add(r10);
        for (long j10 : jArr) {
            r10 = operation.invoke(r10, Long.valueOf(j10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Xs(@NotNull char[] cArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Je2 = Je(cArr); Je2 > 0; Je2--) {
            int m10 = random.m(Je2 + 1);
            char c10 = cArr[Je2];
            cArr[Je2] = cArr[m10];
            cArr[m10] = c10;
        }
    }

    @NotNull
    public static final List<Byte> Xt(@NotNull byte[] bArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.n(C14985q.f1(bArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    public static final void Xu(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length > 1) {
            C14985q.W3(sArr);
            wr(sArr);
        }
    }

    @NotNull
    public static final List<Short> Xv(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.W3(copyOf);
        return Hr(copyOf);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Xw(short[] sArr, Mf.l<? super Short, Double> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (short s10 : sArr) {
            d10 += selector.invoke(Short.valueOf(s10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Character> Xx(@NotNull char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = cArr.length;
        if (i10 >= length) {
            return Xy(cArr);
        }
        if (i10 == 1) {
            return G.l(Character.valueOf(cArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Character.valueOf(cArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Character> Xy(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = cArr.length;
        return length != 0 ? length != 1 ? hz(cArr) : G.l(Character.valueOf(cArr[0])) : H.J();
    }

    @NotNull
    public static final <T> Iterable<C14968d0<T>> Xz(@NotNull final T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator aA;
                aA = C14960A.aA(tArr);
                return aA;
            }
        });
    }

    @NotNull
    public static final <K, V> Map<K, V> Y5(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(dArr.length), 16));
        for (double d10 : dArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Double.valueOf(d10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Byte, V> Y6(byte[] bArr, Mf.l<? super Byte, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(bArr.length), 16));
        for (byte b10 : bArr) {
            linkedHashMap.put(Byte.valueOf(b10), valueSelector.invoke(Byte.valueOf(b10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final int Y7(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr[2];
    }

    public static final int Y8(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    @NotNull
    public static final List<Byte> Y9(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (byte b10 : bArr) {
            if (z10) {
                arrayList.add(Byte.valueOf(b10));
            } else if (!predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                arrayList.add(Byte.valueOf(b10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R, V> List<V> YA(@NotNull short[] sArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Short, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = sArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Short.valueOf(sArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Short>> C Ya(@NotNull short[] sArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            short s10 = sArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Short.valueOf(s10)).booleanValue()) {
                destination.add(Short.valueOf(s10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    public static final byte Yb(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return b10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> List<R> Yc(T[] tArr, Mf.p<? super Integer, ? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), tArr[i10]));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Yd(@NotNull byte[] bArr, R r10, @NotNull Mf.q<? super Integer, ? super Byte, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Ie2 = Ie(bArr); Ie2 >= 0; Ie2--) {
            r10 = operation.n(Integer.valueOf(Ie2), Byte.valueOf(bArr[Ie2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final short Ye(short[] sArr, int i10, Mf.l<? super Integer, Short> defaultValue) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= sArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).shortValue() : sArr[i10];
    }

    public static int Yf(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10 == iArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A Yg(@NotNull double[] dArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Double, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (double d10 : dArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Double.valueOf(d10)));
            } else {
                buffer.append(String.valueOf(d10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static int Yh(@NotNull byte[] bArr, byte b10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (b10 == bArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C Yi(@NotNull long[] jArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Long, ? extends R> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Yj(char[] cArr, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(cArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R Yk(boolean[] zArr, Comparator<? super R> comparator, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Boolean.valueOf(zArr[i10]));
                if (comparator.compare(obj, obj2) < 0) {
                    obj = (R) obj2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> int Yl(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        if (Me2 == 0) {
            return i10;
        }
        R invoke = selector.invoke(Integer.valueOf(i10));
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                R invoke2 = selector.invoke(Integer.valueOf(i12));
                if (invoke.compareTo(invoke2) > 0) {
                    i10 = i12;
                    invoke = invoke2;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Ym(double[] dArr, Mf.l<? super Double, Float> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Double.valueOf(dArr[0])).floatValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Double.valueOf(dArr[i10])).floatValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T> T Yn(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (comparator.compare(t10, t11) > 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @NotNull
    public static final nf.Z<List<Integer>, List<Integer>> Yo(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                arrayList.add(Integer.valueOf(i10));
            } else {
                arrayList2.add(Integer.valueOf(i10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final double Yp(@NotNull double[] dArr, @NotNull Mf.q<? super Integer, ? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = operation.n(Integer.valueOf(i10), Double.valueOf(d10), Double.valueOf(dArr[i10])).doubleValue();
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean Yq(@NotNull boolean[] zArr, @NotNull Mf.p<? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Qe2 = Qe(zArr);
        if (Qe2 < 0) {
            return null;
        }
        boolean z10 = zArr[Qe2];
        for (int i10 = Qe2 - 1; i10 >= 0; i10--) {
            z10 = operation.invoke(Boolean.valueOf(zArr[i10]), Boolean.valueOf(z10)).booleanValue();
        }
        return Boolean.valueOf(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> Yr(@NotNull T[] tArr, R r10, @NotNull Mf.p<? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(tArr.length + 1);
        arrayList.add(r10);
        for (A.c cVar : tArr) {
            r10 = operation.invoke(r10, cVar);
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Ys(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        Zs(dArr, Tf.f.f24956b);
    }

    @NotNull
    public static final List<Byte> Yt(@NotNull byte[] bArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Byte.valueOf(bArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Yu(@NotNull short[] sArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        C14985q.X3(sArr, i10, i11);
        xr(sArr, i10, i11);
    }

    @NotNull
    public static final List<Byte> Yv(@NotNull byte[] bArr, @NotNull Comparator<? super Byte> comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Byte[] N42 = C14985q.N4(bArr);
        C14985q.h4(N42, comparator);
        return C14985q.t(N42);
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfDouble")
    @InterfaceC14422l0(version = "1.4")
    public static final double Yw(boolean[] zArr, Mf.l<? super Boolean, Double> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        double d10 = 0.0d;
        for (boolean z10 : zArr) {
            d10 += selector.invoke(Boolean.valueOf(z10)).doubleValue();
        }
        return d10;
    }

    @NotNull
    public static final List<Double> Yx(@NotNull double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = dArr.length;
        if (i10 >= length) {
            return Yy(dArr);
        }
        if (i10 == 1) {
            return G.l(Double.valueOf(dArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Double.valueOf(dArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static List<Double> Yy(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length;
        return length != 0 ? length != 1 ? iz(dArr) : G.l(Double.valueOf(dArr[0])) : H.J();
    }

    @NotNull
    public static final Iterable<C14968d0<Short>> Yz(@NotNull final short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator cA;
                cA = C14960A.cA(sArr);
                return cA;
            }
        });
    }

    @NotNull
    public static final <K, V> Map<K, V> Z5(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(fArr.length), 16));
        for (float f10 : fArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Float.valueOf(f10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Character, V> Z6(char[] cArr, Mf.l<? super Character, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(Vf.u.D(cArr.length, 128)), 16));
        for (char c10 : cArr) {
            linkedHashMap.put(Character.valueOf(c10), valueSelector.invoke(Character.valueOf(c10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final long Z7(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr[2];
    }

    @Ef.f
    public static final <T> int Z8(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr.length;
    }

    @NotNull
    public static final List<Character> Z9(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (char c10 : cArr) {
            if (z10) {
                arrayList.add(Character.valueOf(c10));
            } else if (!predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                arrayList.add(Character.valueOf(c10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R> List<nf.Z<Short, R>> ZA(@NotNull short[] sArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(sArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            short s10 = sArr[i10];
            arrayList.add(nf.v0.a(Short.valueOf(s10), other[i10]));
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Boolean>> C Za(@NotNull boolean[] zArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            boolean z10 = zArr[i10];
            int i12 = i11 + 1;
            if (predicate.invoke(Integer.valueOf(i11), Boolean.valueOf(z10)).booleanValue()) {
                destination.add(Boolean.valueOf(z10));
            }
            i10++;
            i11 = i12;
        }
        return destination;
    }

    public static final char Zb(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length != 0) {
            return cArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Zc(short[] sArr, Mf.p<? super Integer, ? super Short, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Short.valueOf(sArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R Zd(@NotNull char[] cArr, R r10, @NotNull Mf.q<? super Integer, ? super Character, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Je2 = Je(cArr); Je2 >= 0; Je2--) {
            r10 = operation.n(Integer.valueOf(Je2), Character.valueOf(cArr[Je2]), r10);
        }
        return r10;
    }

    @Ef.f
    public static final boolean Ze(boolean[] zArr, int i10, Mf.l<? super Integer, Boolean> defaultValue) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= zArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).booleanValue() : zArr[i10];
    }

    public static int Zf(@NotNull long[] jArr, long j10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (j10 == jArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A Zg(@NotNull float[] fArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Float, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (float f10 : fArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Float.valueOf(f10)));
            } else {
                buffer.append(String.valueOf(f10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final int Zh(@NotNull char[] cArr, char c10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = cArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (c10 == cArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C Zi(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), tArr[i10]));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R Zj(double[] dArr, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                R invoke2 = selector.invoke(Double.valueOf(dArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte Zk(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (b10 < b11) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> long Zl(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        if (Ne2 == 0) {
            return j10;
        }
        R invoke = selector.invoke(Long.valueOf(j10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                R invoke2 = selector.invoke(Long.valueOf(j11));
                if (invoke.compareTo(invoke2) > 0) {
                    j10 = j11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float Zm(float[] fArr, Mf.l<? super Float, Float> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Float.valueOf(fArr[0])).floatValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Float.valueOf(fArr[i10])).floatValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short Zn(@NotNull short[] sArr, @NotNull Comparator<? super Short> comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (comparator.compare(Short.valueOf(s10), Short.valueOf(s11)) > 0) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @NotNull
    public static final nf.Z<List<Long>, List<Long>> Zo(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                arrayList.add(Long.valueOf(j10));
            } else {
                arrayList2.add(Long.valueOf(j10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final float Zp(@NotNull float[] fArr, @NotNull Mf.q<? super Integer, ? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = operation.n(Integer.valueOf(i10), Float.valueOf(f10), Float.valueOf(fArr[i10])).floatValue();
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte Zq(@NotNull byte[] bArr, @NotNull Mf.p<? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ie2 = Ie(bArr);
        if (Ie2 < 0) {
            return null;
        }
        byte b10 = bArr[Ie2];
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            b10 = operation.invoke(Byte.valueOf(bArr[i10]), Byte.valueOf(b10)).byteValue();
        }
        return Byte.valueOf(b10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> Zr(short[] sArr, R r10, Mf.p<? super R, ? super Short, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(sArr.length + 1);
        arrayList.add(r10);
        for (short s10 : sArr) {
            r10 = operation.invoke(r10, Short.valueOf(s10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void Zs(@NotNull double[] dArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Ke2 = Ke(dArr); Ke2 > 0; Ke2--) {
            int m10 = random.m(Ke2 + 1);
            double d10 = dArr[Ke2];
            dArr[Ke2] = dArr[m10];
            dArr[m10] = d10;
        }
    }

    @NotNull
    public static final List<Character> Zt(@NotNull char[] cArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.o(C14985q.g1(cArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final List<Byte> Zu(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        Byte[] N42 = C14985q.N4(bArr);
        C14985q.U3(N42);
        return C14985q.t(N42);
    }

    @NotNull
    public static final List<Character> Zv(@NotNull char[] cArr, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Character[] O42 = C14985q.O4(cArr);
        C14985q.h4(O42, comparator);
        return C14985q.t(O42);
    }

    @Lf.j(name = "sumOfFloat")
    public static final float Zw(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        float f10 = 0.0f;
        for (Float f11 : fArr) {
            f10 += f11.floatValue();
        }
        return f10;
    }

    @NotNull
    public static final List<Float> Zx(@NotNull float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = fArr.length;
        if (i10 >= length) {
            return Zy(fArr);
        }
        if (i10 == 1) {
            return G.l(Float.valueOf(fArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Float.valueOf(fArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Float> Zy(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length;
        return length != 0 ? length != 1 ? jz(fArr) : G.l(Float.valueOf(fArr[0])) : H.J();
    }

    @NotNull
    public static final Iterable<C14968d0<Boolean>> Zz(@NotNull final boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return new C14970e0(new Mf.a() {
            @Override
            public final Object invoke() {
                Iterator hA;
                hA = C14960A.hA(zArr);
                return hA;
            }
        });
    }

    @NotNull
    public static final <K, V> Map<K, V> a6(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(iArr.length), 16));
        for (int i10 : iArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Integer.valueOf(i10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Double, V> a7(double[] dArr, Mf.l<? super Double, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(dArr.length), 16));
        for (double d10 : dArr) {
            linkedHashMap.put(Double.valueOf(d10), valueSelector.invoke(Double.valueOf(d10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final <T> T a8(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr[2];
    }

    public static final <T> int a9(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    public static final Iterator aA(Object[] objArr) {
        return C14012i.a(objArr);
    }

    @NotNull
    public static final <R, V> List<V> aB(@NotNull short[] sArr, @NotNull R[] other, @NotNull Mf.p<? super Short, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(sArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Short.valueOf(sArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Double> aa(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (double d10 : dArr) {
            if (z10) {
                arrayList.add(Double.valueOf(d10));
            } else if (!predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                arrayList.add(Double.valueOf(d10));
                z10 = true;
            }
        }
        return arrayList;
    }

    public static final <R> List<R> ab(Object[] objArr) {
        kotlin.jvm.internal.M.p(objArr, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            kotlin.jvm.internal.M.y(3, "R");
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final char ac(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return c10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterable")
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> ad(boolean[] zArr, Mf.p<? super Integer, ? super Boolean, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(arrayList, transform.invoke(Integer.valueOf(i11), Boolean.valueOf(zArr[i10])));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final <R> R ae(@NotNull double[] dArr, R r10, @NotNull Mf.q<? super Integer, ? super Double, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Ke2 = Ke(dArr); Ke2 >= 0; Ke2--) {
            r10 = operation.n(Integer.valueOf(Ke2), Double.valueOf(dArr[Ke2]), r10);
        }
        return r10;
    }

    @Nullable
    public static final Boolean af(@NotNull boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (i10 < 0 || i10 >= zArr.length) {
            return null;
        }
        return Boolean.valueOf(zArr[i10]);
    }

    public static final <T> int ag(@NotNull T[] tArr, T t10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int i10 = 0;
        if (t10 == null) {
            int length = tArr.length;
            while (i10 < length) {
                if (tArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i10 < length2) {
            if (kotlin.jvm.internal.M.g(t10, tArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A ah(@NotNull int[] iArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Integer, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (int i12 : iArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Integer.valueOf(i12)));
            } else {
                buffer.append(String.valueOf(i12));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    @InterfaceC14427o(message = "The function has unclear behavior when searching for NaN or zero values and will be removed soon. Use 'indexOfLast { it == element }' instead to continue using this behavior, or '.asList().lastIndexOf(element: T)' to get the same search behavior as in a list.", replaceWith = @InterfaceC14412g0(expression = "indexOfLast { it == element }", imports = {}))
    @InterfaceC14429p(errorSince = "1.6", hiddenSince = "1.7", warningSince = "1.4")
    public static final int ai(double[] dArr, double d10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (d10 == dArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C aj(@NotNull short[] sArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Short, ? extends R> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Short.valueOf(sArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R ak(float[] fArr, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                R invoke2 = selector.invoke(Float.valueOf(fArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character al(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (kotlin.jvm.internal.M.t(c10, c11) < 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T, R extends Comparable<? super R>> T am(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        if (Oe2 == 0) {
            return t10;
        }
        R invoke = selector.invoke(t10);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                R invoke2 = selector.invoke(t11);
                if (invoke.compareTo(invoke2) > 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float an(int[] iArr, Mf.l<? super Integer, Float> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Integer.valueOf(iArr[0])).floatValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Integer.valueOf(iArr[i10])).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final byte ao(@NotNull byte[] bArr, @NotNull Comparator<? super Byte> comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (comparator.compare(Byte.valueOf(b10), Byte.valueOf(b11)) > 0) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @NotNull
    public static final <T> nf.Z<List<T>, List<T>> ap(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            } else {
                arrayList2.add(t10);
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final int aq(@NotNull int[] iArr, @NotNull Mf.q<? super Integer, ? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                i10 = operation.n(Integer.valueOf(i11), Integer.valueOf(i10), Integer.valueOf(iArr[i11])).intValue();
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character ar(@NotNull char[] cArr, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Je2 = Je(cArr);
        if (Je2 < 0) {
            return null;
        }
        char c10 = cArr[Je2];
        for (int i10 = Je2 - 1; i10 >= 0; i10--) {
            c10 = operation.invoke(Character.valueOf(cArr[i10]), Character.valueOf(c10)).charValue();
        }
        return Character.valueOf(c10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> as(boolean[] zArr, R r10, Mf.p<? super R, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(zArr.length + 1);
        arrayList.add(r10);
        for (boolean z10 : zArr) {
            r10 = operation.invoke(r10, Boolean.valueOf(z10));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void at(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        bt(fArr, Tf.f.f24956b);
    }

    @NotNull
    public static final List<Character> au(@NotNull char[] cArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Character.valueOf(cArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Character> av(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        Character[] O42 = C14985q.O4(cArr);
        C14985q.U3(O42);
        return C14985q.t(O42);
    }

    @NotNull
    public static final List<Double> aw(@NotNull double[] dArr, @NotNull Comparator<? super Double> comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Double[] P42 = C14985q.P4(dArr);
        C14985q.h4(P42, comparator);
        return C14985q.t(P42);
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int ax(byte[] bArr, Mf.l<? super Byte, Integer> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (byte b10 : bArr) {
            i10 += selector.invoke(Byte.valueOf(b10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Integer> ay(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = iArr.length;
        if (i10 >= length) {
            return az(iArr);
        }
        if (i10 == 1) {
            return G.l(Integer.valueOf(iArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Integer.valueOf(iArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Integer> az(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = iArr.length;
        return length != 0 ? length != 1 ? kz(iArr) : G.l(Integer.valueOf(iArr[0])) : H.J();
    }

    @NotNull
    public static final <K, V> Map<K, V> b6(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(jArr.length), 16));
        for (long j10 : jArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Long.valueOf(j10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Float, V> b7(float[] fArr, Mf.l<? super Float, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(fArr.length), 16));
        for (float f10 : fArr) {
            linkedHashMap.put(Float.valueOf(f10), valueSelector.invoke(Float.valueOf(f10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final short b8(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr[2];
    }

    @Ef.f
    public static final int b9(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr.length;
    }

    public static final Iterator bA(byte[] bArr) {
        return C14013j.b(bArr);
    }

    @NotNull
    public static final List<nf.Z<Short, Short>> bB(@NotNull short[] sArr, @NotNull short[] other) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(sArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Short.valueOf(sArr[i10]), Short.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Float> ba(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (float f10 : fArr) {
            if (z10) {
                arrayList.add(Float.valueOf(f10));
            } else if (!predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                arrayList.add(Float.valueOf(f10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    public static final <R, C extends Collection<? super R>> C bb(Object[] objArr, C destination) {
        kotlin.jvm.internal.M.p(objArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (Object obj : objArr) {
            kotlin.jvm.internal.M.y(3, "R");
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static final double bc(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length != 0) {
            return dArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C bd(byte[] bArr, C destination, Mf.p<? super Integer, ? super Byte, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Byte.valueOf(bArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final <R> R be(@NotNull float[] fArr, R r10, @NotNull Mf.q<? super Integer, ? super Float, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Le2 = Le(fArr); Le2 >= 0; Le2--) {
            r10 = operation.n(Integer.valueOf(Le2), Float.valueOf(fArr[Le2]), r10);
        }
        return r10;
    }

    @Nullable
    public static final Byte bf(@NotNull byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (i10 < 0 || i10 >= bArr.length) {
            return null;
        }
        return Byte.valueOf(bArr[i10]);
    }

    public static int bg(@NotNull short[] sArr, short s10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (s10 == sArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A bh(@NotNull long[] jArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Long, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (long j10 : jArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Long.valueOf(j10)));
            } else {
                buffer.append(String.valueOf(j10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    @InterfaceC14427o(message = "The function has unclear behavior when searching for NaN or zero values and will be removed soon. Use 'indexOfLast { it == element }' instead to continue using this behavior, or '.asList().lastIndexOf(element: T)' to get the same search behavior as in a list.", replaceWith = @InterfaceC14412g0(expression = "indexOfLast { it == element }", imports = {}))
    @InterfaceC14429p(errorSince = "1.6", hiddenSince = "1.7", warningSince = "1.4")
    public static final int bi(float[] fArr, float f10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (f10 == fArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C bj(@NotNull boolean[] zArr, @NotNull C destination, @NotNull Mf.p<? super Integer, ? super Boolean, ? extends R> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            destination.add(transform.invoke(Integer.valueOf(i11), Boolean.valueOf(zArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R bk(int[] iArr, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(Integer.valueOf(iArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T extends Comparable<? super T>> T bl(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (t10.compareTo(t11) < 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> short bm(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        if (Pe2 == 0) {
            return s10;
        }
        R invoke = selector.invoke(Short.valueOf(s10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                R invoke2 = selector.invoke(Short.valueOf(s11));
                if (invoke.compareTo(invoke2) > 0) {
                    s10 = s11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float bn(long[] jArr, Mf.l<? super Long, Float> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Long.valueOf(jArr[0])).floatValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Long.valueOf(jArr[i10])).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char bo(@NotNull char[] cArr, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (comparator.compare(Character.valueOf(c10), Character.valueOf(c11)) > 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @NotNull
    public static final nf.Z<List<Short>, List<Short>> bp(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                arrayList.add(Short.valueOf(s10));
            } else {
                arrayList2.add(Short.valueOf(s10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final long bq(@NotNull long[] jArr, @NotNull Mf.q<? super Integer, ? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                j10 = operation.n(Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(jArr[i10])).longValue();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double br(@NotNull double[] dArr, @NotNull Mf.p<? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ke2 = Ke(dArr);
        if (Ke2 < 0) {
            return null;
        }
        double d10 = dArr[Ke2];
        for (int i10 = Ke2 - 1; i10 >= 0; i10--) {
            d10 = operation.invoke(Double.valueOf(dArr[i10]), Double.valueOf(d10)).doubleValue();
        }
        return Double.valueOf(d10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> bs(byte[] bArr, R r10, Mf.q<? super Integer, ? super R, ? super Byte, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(bArr.length + 1);
        arrayList.add(r10);
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Byte.valueOf(bArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void bt(@NotNull float[] fArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Le2 = Le(fArr); Le2 > 0; Le2--) {
            int m10 = random.m(Le2 + 1);
            float f10 = fArr[Le2];
            fArr[Le2] = fArr[m10];
            fArr[m10] = f10;
        }
    }

    @NotNull
    public static final List<Double> bu(@NotNull double[] dArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.p(C14985q.h1(dArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final List<Double> bv(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        Double[] P42 = C14985q.P4(dArr);
        C14985q.U3(P42);
        return C14985q.t(P42);
    }

    @NotNull
    public static final List<Float> bw(@NotNull float[] fArr, @NotNull Comparator<? super Float> comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Float[] Q42 = C14985q.Q4(fArr);
        C14985q.h4(Q42, comparator);
        return C14985q.t(Q42);
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int bx(char[] cArr, Mf.l<? super Character, Integer> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (char c10 : cArr) {
            i10 += selector.invoke(Character.valueOf(c10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Long> bz(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = jArr.length;
        return length != 0 ? length != 1 ? lz(jArr) : G.l(Long.valueOf(jArr[0])) : H.J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, K, V> Map<K, V> c6(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(tArr.length), 16));
        for (A.c cVar : tArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(cVar);
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Integer, V> c7(int[] iArr, Mf.l<? super Integer, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(iArr.length), 16));
        for (int i10 : iArr) {
            linkedHashMap.put(Integer.valueOf(i10), valueSelector.invoke(Integer.valueOf(i10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final boolean c8(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr[2];
    }

    public static final int c9(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    public static final Iterator cA(short[] sArr) {
        return C14013j.h(sArr);
    }

    @NotNull
    public static final <V> List<V> cB(@NotNull short[] sArr, @NotNull short[] other, @NotNull Mf.p<? super Short, ? super Short, ? extends V> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(sArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Short.valueOf(sArr[i10]), Short.valueOf(other[i10])));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Integer> ca(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (int i10 : iArr) {
            if (z10) {
                arrayList.add(Integer.valueOf(i10));
            } else if (!predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                arrayList.add(Integer.valueOf(i10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<Byte> cb(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (byte b10 : bArr) {
            if (!predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                arrayList.add(Byte.valueOf(b10));
            }
        }
        return arrayList;
    }

    public static final double cc(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return d10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C cd(char[] cArr, C destination, Mf.p<? super Integer, ? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Character.valueOf(cArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final <R> R ce(@NotNull int[] iArr, R r10, @NotNull Mf.q<? super Integer, ? super Integer, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Me2 = Me(iArr); Me2 >= 0; Me2--) {
            r10 = operation.n(Integer.valueOf(Me2), Integer.valueOf(iArr[Me2]), r10);
        }
        return r10;
    }

    @Nullable
    public static final Character cf(@NotNull char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (i10 < 0 || i10 >= cArr.length) {
            return null;
        }
        return Character.valueOf(cArr[i10]);
    }

    public static final int cg(@NotNull boolean[] zArr, boolean z10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (z10 == zArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, A extends Appendable> A ch(@NotNull T[] tArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t10 : tArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            C3643z.b(buffer, t10, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static int ci(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (i10 == iArr[length]) {
                    return length;
                }
                if (i11 < 0) {
                    break;
                }
                length = i11;
            }
        }
        return -1;
    }

    @NotNull
    public static final <T, R> List<R> cj(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            R invoke = transform.invoke(t10);
            if (invoke != null) {
                arrayList.add(invoke);
            }
        }
        return arrayList;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R ck(long[] jArr, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(Long.valueOf(jArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double cl(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = Math.max(d10, dArr[i10]);
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @Lf.j(name = "minByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> boolean cm(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        if (Qe2 == 0) {
            return z10;
        }
        R invoke = selector.invoke(Boolean.valueOf(z10));
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                R invoke2 = selector.invoke(Boolean.valueOf(z11));
                if (invoke.compareTo(invoke2) > 0) {
                    z10 = z11;
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return z10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Float cn(T[] tArr, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(tArr[0]).floatValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(tArr[i10]).floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double co(@NotNull double[] dArr, @NotNull Comparator<? super Double> comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                if (comparator.compare(Double.valueOf(d10), Double.valueOf(d11)) > 0) {
                    d10 = d11;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @NotNull
    public static final nf.Z<List<Boolean>, List<Boolean>> cp(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                arrayList.add(Boolean.valueOf(z10));
            } else {
                arrayList2.add(Boolean.valueOf(z10));
            }
        }
        return new nf.Z<>(arrayList, arrayList2);
    }

    public static final <S, T extends S> S cq(@NotNull T[] tArr, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        S s10 = (Object) tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                s10 = operation.n(Integer.valueOf(i10), s10, (Object) tArr[i10]);
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float cr(@NotNull float[] fArr, @NotNull Mf.p<? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Le2 = Le(fArr);
        if (Le2 < 0) {
            return null;
        }
        float f10 = fArr[Le2];
        for (int i10 = Le2 - 1; i10 >= 0; i10--) {
            f10 = operation.invoke(Float.valueOf(fArr[i10]), Float.valueOf(f10)).floatValue();
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> cs(char[] cArr, R r10, Mf.q<? super Integer, ? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(cArr.length + 1);
        arrayList.add(r10);
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Character.valueOf(cArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void ct(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        dt(iArr, Tf.f.f24956b);
    }

    @NotNull
    public static final List<Double> cu(@NotNull double[] dArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Double.valueOf(dArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Float> cv(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        Float[] Q42 = C14985q.Q4(fArr);
        C14985q.U3(Q42);
        return C14985q.t(Q42);
    }

    @NotNull
    public static final List<Integer> cw(@NotNull int[] iArr, @NotNull Comparator<? super Integer> comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Integer[] R42 = C14985q.R4(iArr);
        C14985q.h4(R42, comparator);
        return C14985q.t(R42);
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int cx(double[] dArr, Mf.l<? super Double, Integer> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (double d10 : dArr) {
            i10 += selector.invoke(Double.valueOf(d10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Long> cy(@NotNull long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = jArr.length;
        if (i10 >= length) {
            return bz(jArr);
        }
        if (i10 == 1) {
            return G.l(Long.valueOf(jArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Long.valueOf(jArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> cz(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int length = tArr.length;
        return length != 0 ? length != 1 ? mz(tArr) : G.l(tArr[0]) : H.J();
    }

    public static final boolean d5(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (!predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K, V> Map<K, V> d6(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(sArr.length), 16));
        for (short s10 : sArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Short.valueOf(s10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Long, V> d7(long[] jArr, Mf.l<? super Long, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(jArr.length), 16));
        for (long j10 : jArr) {
            linkedHashMap.put(Long.valueOf(j10), valueSelector.invoke(Long.valueOf(j10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final byte d8(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr[3];
    }

    @Ef.f
    public static final int d9(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr.length;
    }

    public static final Iterator dA(int[] iArr) {
        return C14013j.f(iArr);
    }

    @NotNull
    public static final <R> List<nf.Z<Boolean, R>> dB(@NotNull boolean[] zArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = zArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Boolean.valueOf(zArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final List<Long> da(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (long j10 : jArr) {
            if (z10) {
                arrayList.add(Long.valueOf(j10));
            } else if (!predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                arrayList.add(Long.valueOf(j10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<Character> db(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (char c10 : cArr) {
            if (!predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                arrayList.add(Character.valueOf(c10));
            }
        }
        return arrayList;
    }

    public static final float dc(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length != 0) {
            return fArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C dd(double[] dArr, C destination, Mf.p<? super Integer, ? super Double, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final <R> R de(@NotNull long[] jArr, R r10, @NotNull Mf.q<? super Integer, ? super Long, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Ne2 = Ne(jArr); Ne2 >= 0; Ne2--) {
            r10 = operation.n(Integer.valueOf(Ne2), Long.valueOf(jArr[Ne2]), r10);
        }
        return r10;
    }

    @Nullable
    public static final Double df(@NotNull double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (i10 < 0 || i10 >= dArr.length) {
            return null;
        }
        return Double.valueOf(dArr[i10]);
    }

    public static final int dg(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Byte.valueOf(bArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A dh(@NotNull short[] sArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Short, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (short s10 : sArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Short.valueOf(s10)));
            } else {
                buffer.append(String.valueOf((int) s10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static int di(@NotNull long[] jArr, long j10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = jArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (j10 == jArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C dj(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (T t10 : tArr) {
            R invoke = transform.invoke(t10);
            if (invoke != null) {
                destination.add(invoke);
            }
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R dk(T[] tArr, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                R invoke2 = selector.invoke(tArr[i10]);
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double dl(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return null;
        }
        double doubleValue = dArr[0].doubleValue();
        int Oe2 = Oe(dArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, dArr[i10].doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double dm(byte[] bArr, Mf.l<? super Byte, Double> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Byte.valueOf(bArr[0])).doubleValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Byte.valueOf(bArr[i10])).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float dn(short[] sArr, Mf.l<? super Short, Float> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Short.valueOf(sArr[0])).floatValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Short.valueOf(sArr[i10])).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final byte dp(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return ep(bArr, Tf.f.f24956b);
    }

    public static final short dq(@NotNull short[] sArr, @NotNull Mf.q<? super Integer, ? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                s10 = operation.n(Integer.valueOf(i10), Short.valueOf(s10), Short.valueOf(sArr[i10])).shortValue();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer dr(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Me2 = Me(iArr);
        if (Me2 < 0) {
            return null;
        }
        int i10 = iArr[Me2];
        for (int i11 = Me2 - 1; i11 >= 0; i11--) {
            i10 = operation.invoke(Integer.valueOf(iArr[i11]), Integer.valueOf(i10)).intValue();
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> ds(double[] dArr, R r10, Mf.q<? super Integer, ? super R, ? super Double, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(dArr.length + 1);
        arrayList.add(r10);
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Double.valueOf(dArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void dt(@NotNull int[] iArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Me2 = Me(iArr); Me2 > 0; Me2--) {
            int m10 = random.m(Me2 + 1);
            int i10 = iArr[Me2];
            iArr[Me2] = iArr[m10];
            iArr[m10] = i10;
        }
    }

    @NotNull
    public static final List<Float> du(@NotNull float[] fArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.q(C14985q.i1(fArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final List<Integer> dv(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        Integer[] R42 = C14985q.R4(iArr);
        C14985q.U3(R42);
        return C14985q.t(R42);
    }

    @NotNull
    public static final List<Long> dw(@NotNull long[] jArr, @NotNull Comparator<? super Long> comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Long[] S42 = C14985q.S4(jArr);
        C14985q.h4(S42, comparator);
        return C14985q.t(S42);
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int dx(float[] fArr, Mf.l<? super Float, Integer> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (float f10 : fArr) {
            i10 += selector.invoke(Float.valueOf(f10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final <T> List<T> dy(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = tArr.length;
        if (i10 >= length) {
            return cz(tArr);
        }
        if (i10 == 1) {
            return G.l(tArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(tArr[i11]);
        }
        return arrayList;
    }

    @NotNull
    public static final List<Short> dz(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = sArr.length;
        return length != 0 ? length != 1 ? nz(sArr) : G.l(Short.valueOf(sArr[0])) : H.J();
    }

    public static final boolean e5(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (!predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K, V> Map<K, V> e6(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends nf.Z<? extends K, ? extends V>> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(zArr.length), 16));
        for (boolean z10 : zArr) {
            nf.Z<? extends K, ? extends V> invoke = transform.invoke(Boolean.valueOf(z10));
            linkedHashMap.put(invoke.e(), invoke.f());
        }
        return linkedHashMap;
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <K, V> Map<K, V> e7(@NotNull K[] kArr, @NotNull Mf.l<? super K, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(kArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(kArr.length), 16));
        for (K k10 : kArr) {
            linkedHashMap.put(k10, valueSelector.invoke(k10));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final char e8(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr[3];
    }

    public static final int e9(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int i10 = 0;
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                i10++;
            }
        }
        return i10;
    }

    public static final Iterator eA(long[] jArr) {
        return C14013j.g(jArr);
    }

    @NotNull
    public static final <R, V> List<V> eB(@NotNull boolean[] zArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Boolean, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = zArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Boolean.valueOf(zArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> ea(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (T t10 : tArr) {
            if (z10) {
                arrayList.add(t10);
            } else if (!predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<Double> eb(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (double d10 : dArr) {
            if (!predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                arrayList.add(Double.valueOf(d10));
            }
        }
        return arrayList;
    }

    public static final float ec(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return f10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C ed(float[] fArr, C destination, Mf.p<? super Integer, ? super Float, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Float.valueOf(fArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T, R> R ee(@NotNull T[] tArr, R r10, @NotNull Mf.q<? super Integer, ? super T, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Oe2 = Oe(tArr); Oe2 >= 0; Oe2--) {
            r10 = operation.n(Integer.valueOf(Oe2), tArr[Oe2], r10);
        }
        return r10;
    }

    @Nullable
    public static final Float ef(@NotNull float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (i10 < 0 || i10 >= fArr.length) {
            return null;
        }
        return Float.valueOf(fArr[i10]);
    }

    public static final int eg(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Character.valueOf(cArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <A extends Appendable> A eh(@NotNull boolean[] zArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Boolean, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(buffer, "buffer");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (boolean z10 : zArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Boolean.valueOf(z10)));
            } else {
                buffer.append(String.valueOf(z10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final <T> int ei(@NotNull T[] tArr, T t10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (t10 == null) {
            int length = tArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i10 = length - 1;
                    if (tArr[length] == null) {
                        return length;
                    }
                    if (i10 < 0) {
                        break;
                    }
                    length = i10;
                }
            }
        } else {
            int length2 = tArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i11 = length2 - 1;
                    if (kotlin.jvm.internal.M.g(t10, tArr[length2])) {
                        return length2;
                    }
                    if (i11 < 0) {
                        break;
                    }
                    length2 = i11;
                }
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C ej(@NotNull byte[] bArr, @NotNull C destination, @NotNull Mf.l<? super Byte, ? extends R> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (byte b10 : bArr) {
            destination.add(transform.invoke(Byte.valueOf(b10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R ek(short[] sArr, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(Short.valueOf(sArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float el(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = Math.max(f10, fArr[i10]);
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double em(char[] cArr, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Character.valueOf(cArr[0])).doubleValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Character.valueOf(cArr[i10])).doubleValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float en(boolean[] zArr, Mf.l<? super Boolean, Float> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Boolean.valueOf(zArr[0])).floatValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Boolean.valueOf(zArr[i10])).floatValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float eo(@NotNull float[] fArr, @NotNull Comparator<? super Float> comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                if (comparator.compare(Float.valueOf(f10), Float.valueOf(f11)) > 0) {
                    f10 = f11;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final byte ep(@NotNull byte[] bArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (bArr.length != 0) {
            return bArr[random.m(bArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static final boolean eq(@NotNull boolean[] zArr, @NotNull Mf.q<? super Integer, ? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                z10 = operation.n(Integer.valueOf(i10), Boolean.valueOf(z10), Boolean.valueOf(zArr[i10])).booleanValue();
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return z10;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long er(@NotNull long[] jArr, @NotNull Mf.p<? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ne2 = Ne(jArr);
        if (Ne2 < 0) {
            return null;
        }
        long j10 = jArr[Ne2];
        for (int i10 = Ne2 - 1; i10 >= 0; i10--) {
            j10 = operation.invoke(Long.valueOf(jArr[i10]), Long.valueOf(j10)).longValue();
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> es(float[] fArr, R r10, Mf.q<? super Integer, ? super R, ? super Float, ? extends R> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(fArr.length + 1);
        arrayList.add(r10);
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Float.valueOf(fArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void et(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        ft(jArr, Tf.f.f24956b);
    }

    @NotNull
    public static final List<Float> eu(@NotNull float[] fArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Float.valueOf(fArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Long> ev(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        Long[] S42 = C14985q.S4(jArr);
        C14985q.U3(S42);
        return C14985q.t(S42);
    }

    @NotNull
    public static final <T> List<T> ew(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        return C14985q.t(xv(tArr, comparator));
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int ex(int[] iArr, Mf.l<? super Integer, Integer> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += selector.invoke(Integer.valueOf(i11)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Short> ey(@NotNull short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = sArr.length;
        if (i10 >= length) {
            return dz(sArr);
        }
        if (i10 == 1) {
            return G.l(Short.valueOf(sArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Short.valueOf(sArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Boolean> ez(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length;
        return length != 0 ? length != 1 ? oz(zArr) : G.l(Boolean.valueOf(zArr[0])) : H.J();
    }

    public static final boolean f5(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (!predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K> Map<K, Byte> f6(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(bArr.length), 16));
        for (byte b10 : bArr) {
            linkedHashMap.put(keySelector.invoke(Byte.valueOf(b10)), Byte.valueOf(b10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Short, V> f7(short[] sArr, Mf.l<? super Short, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(sArr.length), 16));
        for (short s10 : sArr) {
            linkedHashMap.put(Short.valueOf(s10), valueSelector.invoke(Short.valueOf(s10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final double f8(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr[3];
    }

    @NotNull
    public static final List<Byte> f9(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return S.a6(pz(bArr));
    }

    public static final Iterator fA(float[] fArr) {
        return C14013j.e(fArr);
    }

    @NotNull
    public static final <R> List<nf.Z<Boolean, R>> fB(@NotNull boolean[] zArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(zArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            boolean z10 = zArr[i10];
            arrayList.add(nf.v0.a(Boolean.valueOf(z10), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Short> fa(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (short s10 : sArr) {
            if (z10) {
                arrayList.add(Short.valueOf(s10));
            } else if (!predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                arrayList.add(Short.valueOf(s10));
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<Float> fb(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (float f10 : fArr) {
            if (!predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                arrayList.add(Float.valueOf(f10));
            }
        }
        return arrayList;
    }

    public static int fc(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C fd(int[] iArr, C destination, Mf.p<? super Integer, ? super Integer, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final <R> R fe(@NotNull short[] sArr, R r10, @NotNull Mf.q<? super Integer, ? super Short, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Pe2 = Pe(sArr); Pe2 >= 0; Pe2--) {
            r10 = operation.n(Integer.valueOf(Pe2), Short.valueOf(sArr[Pe2]), r10);
        }
        return r10;
    }

    @Nullable
    public static final Integer ff(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (i10 < 0 || i10 >= iArr.length) {
            return null;
        }
        return Integer.valueOf(iArr[i10]);
    }

    public static final int fg(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = dArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Double.valueOf(dArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    public static int fi(@NotNull short[] sArr, short s10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = sArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (s10 == sArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C fj(@NotNull char[] cArr, @NotNull C destination, @NotNull Mf.l<? super Character, ? extends R> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (char c10 : cArr) {
            destination.add(transform.invoke(Character.valueOf(c10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R fk(boolean[] zArr, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                R invoke2 = selector.invoke(Boolean.valueOf(zArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float fl(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        float floatValue = fArr[0].floatValue();
        int Oe2 = Oe(fArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.max(floatValue, fArr[i10].floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double fm(double[] dArr, Mf.l<? super Double, Double> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Double.valueOf(dArr[0])).doubleValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Double.valueOf(dArr[i10])).doubleValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R fn(byte[] bArr, Comparator<? super R> comparator, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Byte.valueOf(bArr[i10]));
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

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final int fo(@NotNull int[] iArr, @NotNull Comparator<? super Integer> comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (comparator.compare(Integer.valueOf(i10), Integer.valueOf(i12)) > 0) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final char fp(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return gp(cArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean fq(@NotNull boolean[] zArr, @NotNull Mf.q<? super Integer, ? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                z10 = operation.n(Integer.valueOf(i10), Boolean.valueOf(z10), Boolean.valueOf(zArr[i10])).booleanValue();
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S fr(@NotNull T[] tArr, @NotNull Mf.p<? super T, ? super S, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Oe2 = Oe(tArr);
        if (Oe2 < 0) {
            return null;
        }
        S s10 = (S) tArr[Oe2];
        for (int i10 = Oe2 - 1; i10 >= 0; i10--) {
            s10 = operation.invoke((Object) tArr[i10], s10);
        }
        return s10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> fs(int[] iArr, R r10, Mf.q<? super Integer, ? super R, ? super Integer, ? extends R> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(iArr.length + 1);
        arrayList.add(r10);
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Integer.valueOf(iArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void ft(@NotNull long[] jArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Ne2 = Ne(jArr); Ne2 > 0; Ne2--) {
            int m10 = random.m(Ne2 + 1);
            long j10 = jArr[Ne2];
            jArr[Ne2] = jArr[m10];
            jArr[m10] = j10;
        }
    }

    @NotNull
    public static final List<Integer> fu(@NotNull int[] iArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.r(C14985q.j1(iArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final <T extends Comparable<? super T>> List<T> fv(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return C14985q.t(nv(tArr));
    }

    @NotNull
    public static final List<Short> fw(@NotNull short[] sArr, @NotNull Comparator<? super Short> comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Short[] T42 = C14985q.T4(sArr);
        C14985q.h4(T42, comparator);
        return C14985q.t(T42);
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int fx(long[] jArr, Mf.l<? super Long, Integer> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (long j10 : jArr) {
            i10 += selector.invoke(Long.valueOf(j10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Boolean> fy(@NotNull boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return H.J();
        }
        int length = zArr.length;
        if (i10 >= length) {
            return ez(zArr);
        }
        if (i10 == 1) {
            return G.l(Boolean.valueOf(zArr[length - 1]));
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(Boolean.valueOf(zArr[i11]));
        }
        return arrayList;
    }

    @NotNull
    public static final long[] fz(@NotNull Long[] lArr) {
        kotlin.jvm.internal.M.p(lArr, "<this>");
        int length = lArr.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = lArr[i10].longValue();
        }
        return jArr;
    }

    public static final boolean g5(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (!predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K, V> Map<K, V> g6(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends K> keySelector, @NotNull Mf.l<? super Byte, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(bArr.length), 16));
        for (byte b10 : bArr) {
            linkedHashMap.put(keySelector.invoke(Byte.valueOf(b10)), valueTransform.invoke(Byte.valueOf(b10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <V> Map<Boolean, V> g7(boolean[] zArr, Mf.l<? super Boolean, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(zArr.length), 16));
        for (boolean z10 : zArr) {
            linkedHashMap.put(Boolean.valueOf(z10), valueSelector.invoke(Boolean.valueOf(z10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    public static final float g8(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr[3];
    }

    @NotNull
    public static final List<Character> g9(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return S.a6(qz(cArr));
    }

    public static final Iterator gA(double[] dArr) {
        return C14013j.d(dArr);
    }

    @NotNull
    public static final <R, V> List<V> gB(@NotNull boolean[] zArr, @NotNull R[] other, @NotNull Mf.p<? super Boolean, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(zArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Boolean.valueOf(zArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Boolean> ga(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        for (boolean z11 : zArr) {
            if (z10) {
                arrayList.add(Boolean.valueOf(z11));
            } else if (!predicate.invoke(Boolean.valueOf(z11)).booleanValue()) {
                arrayList.add(Boolean.valueOf(z11));
                z10 = true;
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<Integer> gb(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (!predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    public static final int gc(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                return i10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C gd(long[] jArr, C destination, Mf.p<? super Integer, ? super Long, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final <R> R ge(@NotNull boolean[] zArr, R r10, @NotNull Mf.q<? super Integer, ? super Boolean, ? super R, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (int Qe2 = Qe(zArr); Qe2 >= 0; Qe2--) {
            r10 = operation.n(Integer.valueOf(Qe2), Boolean.valueOf(zArr[Qe2]), r10);
        }
        return r10;
    }

    @Nullable
    public static final Long gf(@NotNull long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (i10 < 0 || i10 >= jArr.length) {
            return null;
        }
        return Long.valueOf(jArr[i10]);
    }

    public static final int gg(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = fArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Float.valueOf(fArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    public static final int gi(@NotNull boolean[] zArr, boolean z10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = zArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (z10 == zArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C gj(@NotNull double[] dArr, @NotNull C destination, @NotNull Mf.l<? super Double, ? extends R> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (double d10 : dArr) {
            destination.add(transform.invoke(Double.valueOf(d10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R gk(byte[] bArr, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(Byte.valueOf(bArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer gl(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (i10 < i12) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double gm(float[] fArr, Mf.l<? super Float, Double> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Float.valueOf(fArr[0])).doubleValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Float.valueOf(fArr[i10])).doubleValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R gn(char[] cArr, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(cArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final long go(@NotNull long[] jArr, @NotNull Comparator<? super Long> comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (comparator.compare(Long.valueOf(j10), Long.valueOf(j11)) > 0) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final char gp(@NotNull char[] cArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (cArr.length != 0) {
            return cArr[random.m(cArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte gq(@NotNull byte[] bArr, @NotNull Mf.q<? super Integer, ? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                b10 = operation.n(Integer.valueOf(i10), Byte.valueOf(b10), Byte.valueOf(bArr[i10])).byteValue();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short gr(@NotNull short[] sArr, @NotNull Mf.p<? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Pe2 = Pe(sArr);
        if (Pe2 < 0) {
            return null;
        }
        short s10 = sArr[Pe2];
        for (int i10 = Pe2 - 1; i10 >= 0; i10--) {
            s10 = operation.invoke(Short.valueOf(sArr[i10]), Short.valueOf(s10)).shortValue();
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> gs(long[] jArr, R r10, Mf.q<? super Integer, ? super R, ? super Long, ? extends R> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(jArr.length + 1);
        arrayList.add(r10);
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Long.valueOf(jArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final <T> void gt(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        ht(tArr, Tf.f.f24956b);
    }

    @NotNull
    public static final List<Integer> gu(@NotNull int[] iArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(iArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Short> gv(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        Short[] T42 = C14985q.T4(sArr);
        C14985q.U3(T42);
        return C14985q.t(T42);
    }

    @NotNull
    public static final List<Boolean> gw(@NotNull boolean[] zArr, @NotNull Comparator<? super Boolean> comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        Boolean[] M42 = C14985q.M4(zArr);
        C14985q.h4(M42, comparator);
        return C14985q.t(M42);
    }

    @Lf.j(name = "sumOfInt")
    public static final int gx(@NotNull Integer[] numArr) {
        kotlin.jvm.internal.M.p(numArr, "<this>");
        int i10 = 0;
        for (Integer num : numArr) {
            i10 += num.intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Byte> gy(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Ie2 = Ie(bArr); -1 < Ie2; Ie2--) {
            if (!predicate.invoke(Byte.valueOf(bArr[Ie2])).booleanValue()) {
                return x9(bArr, Ie2 + 1);
            }
        }
        return Wy(bArr);
    }

    @NotNull
    public static final List<Byte> gz(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b10 : bArr) {
            arrayList.add(Byte.valueOf(b10));
        }
        return arrayList;
    }

    public static final boolean h5(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (!predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K> Map<K, Character> h6(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(cArr.length), 16));
        for (char c10 : cArr) {
            linkedHashMap.put(keySelector.invoke(Character.valueOf(c10)), Character.valueOf(c10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Byte, ? super V>> M h7(byte[] bArr, M destination, Mf.l<? super Byte, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (byte b10 : bArr) {
            destination.put(Byte.valueOf(b10), valueSelector.invoke(Byte.valueOf(b10)));
        }
        return destination;
    }

    @Ef.f
    public static final int h8(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr[3];
    }

    @NotNull
    public static final List<Double> h9(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return S.a6(rz(dArr));
    }

    public static final Iterator hA(boolean[] zArr) {
        return C14013j.a(zArr);
    }

    @NotNull
    public static final List<nf.Z<Boolean, Boolean>> hB(@NotNull boolean[] zArr, @NotNull boolean[] other) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(zArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Boolean.valueOf(zArr[i10]), Boolean.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final byte ha(byte[] bArr, int i10, Mf.l<? super Integer, Byte> defaultValue) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= bArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).byteValue() : bArr[i10];
    }

    @NotNull
    public static final List<Long> hb(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (long j10 : jArr) {
            if (!predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                arrayList.add(Long.valueOf(j10));
            }
        }
        return arrayList;
    }

    public static long hc(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length != 0) {
            return jArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C hd(T[] tArr, C destination, Mf.p<? super Integer, ? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), tArr[i10]));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final void he(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, P0> action) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (byte b10 : bArr) {
            action.invoke(Byte.valueOf(b10));
        }
    }

    @Nullable
    public static <T> T hf(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (i10 < 0 || i10 >= tArr.length) {
            return null;
        }
        return tArr[i10];
    }

    public static final int hg(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Integer.valueOf(iArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Boolean hi(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length == 0) {
            return null;
        }
        return Boolean.valueOf(zArr[zArr.length - 1]);
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C hj(@NotNull float[] fArr, @NotNull C destination, @NotNull Mf.l<? super Float, ? extends R> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (float f10 : fArr) {
            destination.add(transform.invoke(Float.valueOf(f10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R hk(char[] cArr, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(cArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long hl(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (j10 < j11) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double hm(int[] iArr, Mf.l<? super Integer, Double> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Integer.valueOf(iArr[0])).doubleValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Integer.valueOf(iArr[i10])).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R hn(double[] dArr, Comparator<? super R> comparator, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Double.valueOf(dArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <T> T ho(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (comparator.compare(t10, t11) > 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final double hp(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return ip(dArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character hq(@NotNull char[] cArr, @NotNull Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                c10 = operation.n(Integer.valueOf(i10), Character.valueOf(c10), Character.valueOf(cArr[i10])).charValue();
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @NotNull
    public static final <T> T[] hr(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        for (T t10 : tArr) {
            if (t10 == null) {
                throw new IllegalArgumentException("null element found in " + ((Object) tArr) + '.');
            }
        }
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T, R> List<R> hs(@NotNull T[] tArr, R r10, @NotNull Mf.q<? super Integer, ? super R, ? super T, ? extends R> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(tArr.length + 1);
        arrayList.add(r10);
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, tArr[i10]);
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final <T> void ht(@NotNull T[] tArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Oe2 = Oe(tArr); Oe2 > 0; Oe2--) {
            int m10 = random.m(Oe2 + 1);
            T t10 = tArr[Oe2];
            tArr[Oe2] = tArr[m10];
            tArr[m10] = t10;
        }
    }

    @NotNull
    public static final List<Long> hu(@NotNull long[] jArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.s(C14985q.k1(jArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final byte[] hv(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.G3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Byte> hw(@NotNull byte[] bArr, @NotNull Iterable<Byte> other) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Byte> pz = pz(bArr);
        M.K0(pz, other);
        return pz;
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> int hx(T[] tArr, Mf.l<? super T, Integer> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (T t10 : tArr) {
            i10 += selector.invoke(t10).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Character> hy(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Je2 = Je(cArr); -1 < Je2; Je2--) {
            if (!predicate.invoke(Character.valueOf(cArr[Je2])).booleanValue()) {
                return y9(cArr, Je2 + 1);
            }
        }
        return Xy(cArr);
    }

    @NotNull
    public static final List<Character> hz(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        ArrayList arrayList = new ArrayList(cArr.length);
        for (char c10 : cArr) {
            arrayList.add(Character.valueOf(c10));
        }
        return arrayList;
    }

    public static final boolean i5(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (!predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K, V> Map<K, V> i6(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(cArr.length), 16));
        for (char c10 : cArr) {
            linkedHashMap.put(keySelector.invoke(Character.valueOf(c10)), valueTransform.invoke(Character.valueOf(c10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Character, ? super V>> M i7(char[] cArr, M destination, Mf.l<? super Character, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (char c10 : cArr) {
            destination.put(Character.valueOf(c10), valueSelector.invoke(Character.valueOf(c10)));
        }
        return destination;
    }

    @Ef.f
    public static final long i8(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr[3];
    }

    @NotNull
    public static final List<Float> i9(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return S.a6(sz(fArr));
    }

    public static final Iterator iA(char[] cArr) {
        return C14013j.c(cArr);
    }

    @NotNull
    public static final <V> List<V> iB(@NotNull boolean[] zArr, @NotNull boolean[] other, @NotNull Mf.p<? super Boolean, ? super Boolean, ? extends V> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(zArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Boolean.valueOf(zArr[i10]), Boolean.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final char ia(char[] cArr, int i10, Mf.l<? super Integer, Character> defaultValue) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= cArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).charValue() : cArr[i10];
    }

    @NotNull
    public static final <T> List<T> ib(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            if (!predicate.invoke(t10).booleanValue()) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static final long ic(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return j10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C id(short[] sArr, C destination, Mf.p<? super Integer, ? super Short, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Short.valueOf(sArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final void ie(@NotNull char[] cArr, @NotNull Mf.l<? super Character, P0> action) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (char c10 : cArr) {
            action.invoke(Character.valueOf(c10));
        }
    }

    @Nullable
    public static final Short m1789if(@NotNull short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (i10 < 0 || i10 >= sArr.length) {
            return null;
        }
        return Short.valueOf(sArr[i10]);
    }

    public static final int ig(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Long.valueOf(jArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Boolean ii(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = zArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            boolean z10 = zArr[length];
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return Boolean.valueOf(z10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C ij(@NotNull int[] iArr, @NotNull C destination, @NotNull Mf.l<? super Integer, ? extends R> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 : iArr) {
            destination.add(transform.invoke(Integer.valueOf(i10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R ik(double[] dArr, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                R invoke2 = selector.invoke(Double.valueOf(dArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short il(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (s10 < s11) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double im(long[] jArr, Mf.l<? super Long, Double> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Long.valueOf(jArr[0])).doubleValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Long.valueOf(jArr[i10])).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R in(float[] fArr, Comparator<? super R> comparator, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Float.valueOf(fArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final short io(@NotNull short[] sArr, @NotNull Comparator<? super Short> comparator) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (comparator.compare(Short.valueOf(s10), Short.valueOf(s11)) > 0) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final double ip(@NotNull double[] dArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (dArr.length != 0) {
            return dArr[random.m(dArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double iq(@NotNull double[] dArr, @NotNull Mf.q<? super Integer, ? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = operation.n(Integer.valueOf(i10), Double.valueOf(d10), Double.valueOf(dArr[i10])).doubleValue();
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    public static void ir(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = (bArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Ie2 = Ie(bArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[Ie2];
            bArr[Ie2] = b10;
            Ie2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> is(short[] sArr, R r10, Mf.q<? super Integer, ? super R, ? super Short, ? extends R> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(sArr.length + 1);
        arrayList.add(r10);
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Short.valueOf(sArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @NotNull
    public static final List<Long> iu(@NotNull long[] jArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(jArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final char[] iv(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return cArr;
        }
        char[] copyOf = Arrays.copyOf(cArr, cArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.I3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Character> iw(@NotNull char[] cArr, @NotNull Iterable<Character> other) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Character> qz = qz(cArr);
        M.K0(qz, other);
        return qz;
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int ix(short[] sArr, Mf.l<? super Short, Integer> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (short s10 : sArr) {
            i10 += selector.invoke(Short.valueOf(s10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Double> iy(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Ke2 = Ke(dArr); -1 < Ke2; Ke2--) {
            if (!predicate.invoke(Double.valueOf(dArr[Ke2])).booleanValue()) {
                return z9(dArr, Ke2 + 1);
            }
        }
        return Yy(dArr);
    }

    @NotNull
    public static final List<Double> iz(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d10 : dArr) {
            arrayList.add(Double.valueOf(d10));
        }
        return arrayList;
    }

    public static final <T> boolean j5(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (!predicate.invoke(t10).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K> Map<K, Double> j6(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(dArr.length), 16));
        for (double d10 : dArr) {
            linkedHashMap.put(keySelector.invoke(Double.valueOf(d10)), Double.valueOf(d10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Double, ? super V>> M j7(double[] dArr, M destination, Mf.l<? super Double, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (double d10 : dArr) {
            destination.put(Double.valueOf(d10), valueSelector.invoke(Double.valueOf(d10)));
        }
        return destination;
    }

    @Ef.f
    public static final <T> T j8(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr[3];
    }

    @NotNull
    public static final List<Integer> j9(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return S.a6(tz(iArr));
    }

    @NotNull
    public static final <R> List<nf.Z<Byte, R>> jA(@NotNull byte[] bArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = bArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Byte.valueOf(bArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    public static final double ja(double[] dArr, int i10, Mf.l<? super Integer, Double> defaultValue) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= dArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).doubleValue() : dArr[i10];
    }

    @NotNull
    public static final List<Short> jb(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (short s10 : sArr) {
            if (!predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                arrayList.add(Short.valueOf(s10));
            }
        }
        return arrayList;
    }

    public static final <T> T jc(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length != 0) {
            return tArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedIterableTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <R, C extends Collection<? super R>> C jd(boolean[] zArr, C destination, Mf.p<? super Integer, ? super Boolean, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.t0(destination, transform.invoke(Integer.valueOf(i11), Boolean.valueOf(zArr[i10])));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final void je(@NotNull double[] dArr, @NotNull Mf.l<? super Double, P0> action) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (double d10 : dArr) {
            action.invoke(Double.valueOf(d10));
        }
    }

    @NotNull
    public static final <K> Map<K, List<Byte>> jf(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte b10 : bArr) {
            K invoke = keySelector.invoke(Byte.valueOf(b10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Byte.valueOf(b10));
        }
        return linkedHashMap;
    }

    public static final <T> int jg(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = tArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(tArr[i10]).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Byte ji(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return null;
        }
        return Byte.valueOf(bArr[bArr.length - 1]);
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C jj(@NotNull long[] jArr, @NotNull C destination, @NotNull Mf.l<? super Long, ? extends R> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (long j10 : jArr) {
            destination.add(transform.invoke(Long.valueOf(j10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R jk(float[] fArr, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                R invoke2 = selector.invoke(Float.valueOf(fArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final byte jl(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (b10 < b11) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> double jm(T[] tArr, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(tArr[0]).doubleValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(tArr[i10]).doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R jn(int[] iArr, Comparator<? super R> comparator, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Integer.valueOf(iArr[i10]));
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

    @Lf.j(name = "minWithOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final boolean jo(@NotNull boolean[] zArr, @NotNull Comparator<? super Boolean> comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                if (comparator.compare(Boolean.valueOf(z10), Boolean.valueOf(z11)) > 0) {
                    z10 = z11;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return z10;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final float jp(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return kp(fArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float jq(@NotNull float[] fArr, @NotNull Mf.q<? super Integer, ? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = operation.n(Integer.valueOf(i10), Float.valueOf(f10), Float.valueOf(fArr[i10])).floatValue();
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static void jr(@NotNull byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, bArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[i13];
            bArr[i13] = b10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final <R> List<R> js(boolean[] zArr, R r10, Mf.q<? super Integer, ? super R, ? super Boolean, ? extends R> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return G.l(r10);
        }
        ArrayList arrayList = new ArrayList(zArr.length + 1);
        arrayList.add(r10);
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            r10 = operation.n(Integer.valueOf(i10), r10, Boolean.valueOf(zArr[i10]));
            arrayList.add(r10);
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void jt(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kt(sArr, Tf.f.f24956b);
    }

    @NotNull
    public static final <T> List<T> ju(@NotNull T[] tArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.t(C14985q.l1(tArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final double[] jv(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return dArr;
        }
        double[] copyOf = Arrays.copyOf(dArr, dArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.K3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Double> jw(@NotNull double[] dArr, @NotNull Iterable<Double> other) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Double> rz = rz(dArr);
        M.K0(rz, other);
        return rz;
    }

    @Ef.f
    @Lf.j(name = "sumOfInt")
    @InterfaceC14422l0(version = "1.4")
    public static final int jx(boolean[] zArr, Mf.l<? super Boolean, Integer> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (boolean z10 : zArr) {
            i10 += selector.invoke(Boolean.valueOf(z10)).intValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Float> jy(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Le2 = Le(fArr); -1 < Le2; Le2--) {
            if (!predicate.invoke(Float.valueOf(fArr[Le2])).booleanValue()) {
                return A9(fArr, Le2 + 1);
            }
        }
        return Zy(fArr);
    }

    @NotNull
    public static final List<Float> jz(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f10 : fArr) {
            arrayList.add(Float.valueOf(f10));
        }
        return arrayList;
    }

    public static final boolean k5(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (!predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K, V> Map<K, V> k6(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends K> keySelector, @NotNull Mf.l<? super Double, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(dArr.length), 16));
        for (double d10 : dArr) {
            linkedHashMap.put(keySelector.invoke(Double.valueOf(d10)), valueTransform.invoke(Double.valueOf(d10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Float, ? super V>> M k7(float[] fArr, M destination, Mf.l<? super Float, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (float f10 : fArr) {
            destination.put(Float.valueOf(f10), valueSelector.invoke(Float.valueOf(f10)));
        }
        return destination;
    }

    @Ef.f
    public static final short k8(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr[3];
    }

    @NotNull
    public static final List<Long> k9(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return S.a6(uz(jArr));
    }

    @NotNull
    public static final <R, V> List<V> kA(@NotNull byte[] bArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Byte, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = bArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Byte.valueOf(bArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    public static final float ka(float[] fArr, int i10, Mf.l<? super Integer, Float> defaultValue) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= fArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).floatValue() : fArr[i10];
    }

    @NotNull
    public static final List<Boolean> kb(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (boolean z10 : zArr) {
            if (!predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                arrayList.add(Boolean.valueOf(z10));
            }
        }
        return arrayList;
    }

    public static final <T> T kc(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedSequence")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> List<R> kd(T[] tArr, Mf.p<? super Integer, ? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.s0(arrayList, transform.invoke(Integer.valueOf(i11), tArr[i10]));
            i10++;
            i11++;
        }
        return arrayList;
    }

    public static final void ke(@NotNull float[] fArr, @NotNull Mf.l<? super Float, P0> action) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (float f10 : fArr) {
            action.invoke(Float.valueOf(f10));
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> kf(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends K> keySelector, @NotNull Mf.l<? super Byte, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte b10 : bArr) {
            K invoke = keySelector.invoke(Byte.valueOf(b10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Byte.valueOf(b10)));
        }
        return linkedHashMap;
    }

    public static final int kg(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Short.valueOf(sArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Byte ki(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = bArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            byte b10 = bArr[length];
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return Byte.valueOf(b10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C kj(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (T t10 : tArr) {
            destination.add(transform.invoke(t10));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R kk(int[] iArr, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(Integer.valueOf(iArr[i10]));
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

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final char kl(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (kotlin.jvm.internal.M.t(c10, c11) < 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double km(short[] sArr, Mf.l<? super Short, Double> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Short.valueOf(sArr[0])).doubleValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Short.valueOf(sArr[i10])).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R kn(long[] jArr, Comparator<? super R> comparator, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Long.valueOf(jArr[i10]));
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

    public static final boolean ko(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final float kp(@NotNull float[] fArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (fArr.length != 0) {
            return fArr[random.m(fArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer kq(@NotNull int[] iArr, @NotNull Mf.q<? super Integer, ? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                i10 = operation.n(Integer.valueOf(i11), Integer.valueOf(i10), Integer.valueOf(iArr[i11])).intValue();
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    public static final void kr(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = (cArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Je2 = Je(cArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            char c10 = cArr[i10];
            cArr[i10] = cArr[Je2];
            cArr[Je2] = c10;
            Je2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Byte> ks(byte[] bArr, Mf.p<? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return H.J();
        }
        byte b10 = bArr[0];
        ArrayList arrayList = new ArrayList(bArr.length);
        arrayList.add(Byte.valueOf(b10));
        int length = bArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            b10 = operation.invoke(Byte.valueOf(b10), Byte.valueOf(bArr[i10])).byteValue();
            arrayList.add(Byte.valueOf(b10));
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void kt(@NotNull short[] sArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Pe2 = Pe(sArr); Pe2 > 0; Pe2--) {
            int m10 = random.m(Pe2 + 1);
            short s10 = sArr[Pe2];
            sArr[Pe2] = sArr[m10];
            sArr[m10] = s10;
        }
    }

    @NotNull
    public static final <T> List<T> ku(@NotNull T[] tArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(tArr[it.next().intValue()]);
        }
        return arrayList;
    }

    @NotNull
    public static final float[] kv(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return fArr;
        }
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.M3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Float> kw(@NotNull float[] fArr, @NotNull Iterable<Float> other) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Float> sz = sz(fArr);
        M.K0(sz, other);
        return sz;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long kx(byte[] bArr, Mf.l<? super Byte, Long> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (byte b10 : bArr) {
            j10 += selector.invoke(Byte.valueOf(b10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Integer> ky(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Me2 = Me(iArr); -1 < Me2; Me2--) {
            if (!predicate.invoke(Integer.valueOf(iArr[Me2])).booleanValue()) {
                return B9(iArr, Me2 + 1);
            }
        }
        return az(iArr);
    }

    @NotNull
    public static final List<Integer> kz(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    public static final boolean l5(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (!predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <K> Map<K, Float> l6(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(fArr.length), 16));
        for (float f10 : fArr) {
            linkedHashMap.put(keySelector.invoke(Float.valueOf(f10)), Float.valueOf(f10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Integer, ? super V>> M l7(int[] iArr, M destination, Mf.l<? super Integer, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (int i10 : iArr) {
            destination.put(Integer.valueOf(i10), valueSelector.invoke(Integer.valueOf(i10)));
        }
        return destination;
    }

    @Ef.f
    public static final boolean l8(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr[3];
    }

    @NotNull
    public static <T> List<T> l9(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return S.a6(vz(tArr));
    }

    @NotNull
    public static final List<nf.Z<Byte, Byte>> lA(@NotNull byte[] bArr, @NotNull byte[] other) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(bArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Byte.valueOf(bArr[i10]), Byte.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final int la(int[] iArr, int i10, Mf.l<? super Integer, Integer> defaultValue) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= iArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).intValue() : iArr[i10];
    }

    @NotNull
    public static <T> List<T> lb(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (List) mb(tArr, new ArrayList());
    }

    public static short lc(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length != 0) {
            return sArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "flatMapIndexedSequenceTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C ld(T[] tArr, C destination, Mf.p<? super Integer, ? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            M.s0(destination, transform.invoke(Integer.valueOf(i11), tArr[i10]));
            i10++;
            i11++;
        }
        return destination;
    }

    public static final void le(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, P0> action) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (int i10 : iArr) {
            action.invoke(Integer.valueOf(i10));
        }
    }

    @NotNull
    public static final <K> Map<K, List<Character>> lf(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (char c10 : cArr) {
            K invoke = keySelector.invoke(Character.valueOf(c10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Character.valueOf(c10));
        }
        return linkedHashMap;
    }

    public static final int lg(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (predicate.invoke(Boolean.valueOf(zArr[i10])).booleanValue()) {
                return i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Character li(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return null;
        }
        return Character.valueOf(cArr[cArr.length - 1]);
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C lj(@NotNull short[] sArr, @NotNull C destination, @NotNull Mf.l<? super Short, ? extends R> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (short s10 : sArr) {
            destination.add(transform.invoke(Short.valueOf(s10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R lk(long[] jArr, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                R invoke2 = selector.invoke(Long.valueOf(jArr[i10]));
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

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double ll(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = Math.max(d10, dArr[i10]);
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final double lm(boolean[] zArr, Mf.l<? super Boolean, Double> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = selector.invoke(Boolean.valueOf(zArr[0])).doubleValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                doubleValue = Math.min(doubleValue, selector.invoke(Boolean.valueOf(zArr[i10])).doubleValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R ln(T[] tArr, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(tArr[i10]);
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final boolean lo(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final int lp(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return mp(iArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long lq(@NotNull long[] jArr, @NotNull Mf.q<? super Integer, ? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                j10 = operation.n(Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(jArr[i10])).longValue();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void lr(@NotNull char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, cArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            char c10 = cArr[i10];
            cArr[i10] = cArr[i13];
            cArr[i13] = c10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Character> ls(char[] cArr, Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return H.J();
        }
        char c10 = cArr[0];
        ArrayList arrayList = new ArrayList(cArr.length);
        arrayList.add(Character.valueOf(c10));
        int length = cArr.length;
        int i10 = 1;
        while (i10 < length) {
            Character invoke = operation.invoke(Character.valueOf(c10), Character.valueOf(cArr[i10]));
            char charValue = invoke.charValue();
            arrayList.add(invoke);
            i10++;
            c10 = charValue;
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void lt(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        mt(zArr, Tf.f.f24956b);
    }

    @NotNull
    public static final List<Short> lu(@NotNull short[] sArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.u(C14985q.m1(sArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final int[] lv(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return iArr;
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.O3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Integer> lw(@NotNull int[] iArr, @NotNull Iterable<Integer> other) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Integer> tz = tz(iArr);
        M.K0(tz, other);
        return tz;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long lx(char[] cArr, Mf.l<? super Character, Long> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (char c10 : cArr) {
            j10 += selector.invoke(Character.valueOf(c10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Long> ly(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Ne2 = Ne(jArr); -1 < Ne2; Ne2--) {
            if (!predicate.invoke(Long.valueOf(jArr[Ne2])).booleanValue()) {
                return C9(jArr, Ne2 + 1);
            }
        }
        return bz(jArr);
    }

    @NotNull
    public static final List<Long> lz(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j10 : jArr) {
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static boolean m5(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return !(bArr.length == 0);
    }

    @NotNull
    public static final <K, V> Map<K, V> m6(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends K> keySelector, @NotNull Mf.l<? super Float, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(fArr.length), 16));
        for (float f10 : fArr) {
            linkedHashMap.put(keySelector.invoke(Float.valueOf(f10)), valueTransform.invoke(Float.valueOf(f10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Long, ? super V>> M m7(long[] jArr, M destination, Mf.l<? super Long, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (long j10 : jArr) {
            destination.put(Long.valueOf(j10), valueSelector.invoke(Long.valueOf(j10)));
        }
        return destination;
    }

    @Ef.f
    public static final byte m8(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bArr[4];
    }

    @NotNull
    public static final List<Short> m9(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return S.a6(wz(sArr));
    }

    @NotNull
    public static final <V> List<V> mA(@NotNull byte[] bArr, @NotNull byte[] other, @NotNull Mf.p<? super Byte, ? super Byte, ? extends V> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(bArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Byte.valueOf(bArr[i10]), Byte.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final long ma(long[] jArr, int i10, Mf.l<? super Integer, Long> defaultValue) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= jArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).longValue() : jArr[i10];
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super T>, T> C mb(@NotNull T[] tArr, @NotNull C destination) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        for (T t10 : tArr) {
            if (t10 != null) {
                destination.add(t10);
            }
        }
        return destination;
    }

    public static final short mc(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return s10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "flatMapSequence")
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> List<R> md(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            M.s0(arrayList, transform.invoke(t10));
        }
        return arrayList;
    }

    public static final void me(@NotNull long[] jArr, @NotNull Mf.l<? super Long, P0> action) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (long j10 : jArr) {
            action.invoke(Long.valueOf(j10));
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> mf(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends K> keySelector, @NotNull Mf.l<? super Character, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (char c10 : cArr) {
            K invoke = keySelector.invoke(Character.valueOf(c10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Character.valueOf(c10)));
        }
        return linkedHashMap;
    }

    public static final int mg(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = bArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Byte.valueOf(bArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Character mi(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = cArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            char c10 = cArr[length];
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return Character.valueOf(c10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C mj(@NotNull boolean[] zArr, @NotNull C destination, @NotNull Mf.l<? super Boolean, ? extends R> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (boolean z10 : zArr) {
            destination.add(transform.invoke(Boolean.valueOf(z10)));
        }
        return destination;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R extends Comparable<? super R>> R mk(T[] tArr, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                R invoke2 = selector.invoke(tArr[i10]);
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final double ml(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double doubleValue = dArr[0].doubleValue();
        int Oe2 = Oe(dArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, dArr[i10].doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return doubleValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float mm(byte[] bArr, Mf.l<? super Byte, Float> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Byte.valueOf(bArr[0])).floatValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Byte.valueOf(bArr[i10])).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R mn(short[] sArr, Comparator<? super R> comparator, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Short.valueOf(sArr[i10]));
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

    public static final boolean mo(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final int mp(@NotNull int[] iArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (iArr.length != 0) {
            return iArr[random.m(iArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S mq(@NotNull T[] tArr, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return null;
        }
        S s10 = (Object) tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                s10 = operation.n(Integer.valueOf(i10), s10, (Object) tArr[i10]);
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    public static final void mr(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = (dArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Ke2 = Ke(dArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            double d10 = dArr[i10];
            dArr[i10] = dArr[Ke2];
            dArr[Ke2] = d10;
            Ke2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Double> ms(double[] dArr, Mf.p<? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return H.J();
        }
        double d10 = dArr[0];
        ArrayList arrayList = new ArrayList(dArr.length);
        arrayList.add(Double.valueOf(d10));
        int length = dArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            d10 = operation.invoke(Double.valueOf(d10), Double.valueOf(dArr[i10])).doubleValue();
            arrayList.add(Double.valueOf(d10));
        }
        return arrayList;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void mt(@NotNull boolean[] zArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        for (int Qe2 = Qe(zArr); Qe2 > 0; Qe2--) {
            int m10 = random.m(Qe2 + 1);
            boolean z10 = zArr[Qe2];
            zArr[Qe2] = zArr[m10];
            zArr[m10] = z10;
        }
    }

    @NotNull
    public static final List<Short> mu(@NotNull short[] sArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Short.valueOf(sArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final long[] mv(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return jArr;
        }
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.Q3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Long> mw(@NotNull long[] jArr, @NotNull Iterable<Long> other) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Long> uz = uz(jArr);
        M.K0(uz, other);
        return uz;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long mx(double[] dArr, Mf.l<? super Double, Long> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (double d10 : dArr) {
            j10 += selector.invoke(Double.valueOf(d10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final <T> List<T> my(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Oe2 = Oe(tArr); -1 < Oe2; Oe2--) {
            if (!predicate.invoke(tArr[Oe2]).booleanValue()) {
                return D9(tArr, Oe2 + 1);
            }
        }
        return cz(tArr);
    }

    @NotNull
    public static final <T> List<T> mz(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return new ArrayList(H.v(tArr, false, 1, null));
    }

    public static final boolean n5(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <K> Map<K, Integer> n6(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(iArr.length), 16));
        for (int i10 : iArr) {
            linkedHashMap.put(keySelector.invoke(Integer.valueOf(i10)), Integer.valueOf(i10));
        }
        return linkedHashMap;
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M n7(@NotNull K[] kArr, @NotNull M destination, @NotNull Mf.l<? super K, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(kArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (K k10 : kArr) {
            destination.put(k10, valueSelector.invoke(k10));
        }
        return destination;
    }

    @Ef.f
    public static final char n8(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cArr[4];
    }

    @NotNull
    public static final List<Boolean> n9(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return S.a6(xz(zArr));
    }

    @NotNull
    public static final <R> List<nf.Z<Byte, R>> nA(@NotNull byte[] bArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(bArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            byte b10 = bArr[i10];
            arrayList.add(nf.v0.a(Byte.valueOf(b10), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    public static final <T> T na(T[] tArr, int i10, Mf.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= tArr.length) ? defaultValue.invoke(Integer.valueOf(i10)) : tArr[i10];
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Byte>> C nb(@NotNull byte[] bArr, @NotNull C destination, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (!predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                destination.add(Byte.valueOf(b10));
            }
        }
        return destination;
    }

    public static final boolean nc(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length != 0) {
            return zArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @nf.Y
    @NotNull
    @Lf.j(name = "flatMapSequenceTo")
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R, C extends Collection<? super R>> C nd(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.l<? super T, ? extends InterfaceC3312m<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (T t10 : tArr) {
            M.s0(destination, transform.invoke(t10));
        }
        return destination;
    }

    public static final <T> void ne(@NotNull T[] tArr, @NotNull Mf.l<? super T, P0> action) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (T t10 : tArr) {
            action.invoke(t10);
        }
    }

    @NotNull
    public static final <K> Map<K, List<Double>> nf(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (double d10 : dArr) {
            K invoke = keySelector.invoke(Double.valueOf(d10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Double.valueOf(d10));
        }
        return linkedHashMap;
    }

    public static final int ng(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = cArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Character.valueOf(cArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @Nullable
    public static final Double ni(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return null;
        }
        return Double.valueOf(dArr[dArr.length - 1]);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Boolean nj(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        if (Qe2 == 0) {
            return Boolean.valueOf(z10);
        }
        R invoke = selector.invoke(Boolean.valueOf(z10));
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                R invoke2 = selector.invoke(Boolean.valueOf(z11));
                if (invoke.compareTo(invoke2) < 0) {
                    z10 = z11;
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R nk(short[] sArr, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                R invoke2 = selector.invoke(Short.valueOf(sArr[i10]));
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

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float nl(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = Math.max(f10, fArr[i10]);
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float nm(char[] cArr, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Character.valueOf(cArr[0])).floatValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Character.valueOf(cArr[i10])).floatValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R nn(boolean[] zArr, Comparator<? super R> comparator, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        Object obj = (R) selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Boolean.valueOf(zArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final boolean no(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final long np(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return op(jArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short nq(@NotNull short[] sArr, @NotNull Mf.q<? super Integer, ? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                s10 = operation.n(Integer.valueOf(i10), Short.valueOf(s10), Short.valueOf(sArr[i10])).shortValue();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void nr(@NotNull double[] dArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, dArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            double d10 = dArr[i10];
            dArr[i10] = dArr[i13];
            dArr[i13] = d10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Float> ns(float[] fArr, Mf.p<? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return H.J();
        }
        float f10 = fArr[0];
        ArrayList arrayList = new ArrayList(fArr.length);
        arrayList.add(Float.valueOf(f10));
        int length = fArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            f10 = operation.invoke(Float.valueOf(f10), Float.valueOf(fArr[i10])).floatValue();
            arrayList.add(Float.valueOf(f10));
        }
        return arrayList;
    }

    public static byte nt(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return bArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static final List<Boolean> nu(@NotNull boolean[] zArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? H.J() : C14985q.v(C14985q.n1(zArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T[] nv(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        T[] tArr2 = (T[]) ((Comparable[]) copyOf);
        C14985q.U3(tArr2);
        return tArr2;
    }

    @NotNull
    public static final <T> Set<T> nw(@NotNull T[] tArr, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Collection v02 = M.v0(other);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (T t10 : tArr) {
            if (!v02.contains(t10)) {
                linkedHashSet.add(t10);
            }
        }
        return linkedHashSet;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long nx(float[] fArr, Mf.l<? super Float, Long> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (float f10 : fArr) {
            j10 += selector.invoke(Float.valueOf(f10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Short> ny(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Pe2 = Pe(sArr); -1 < Pe2; Pe2--) {
            if (!predicate.invoke(Short.valueOf(sArr[Pe2])).booleanValue()) {
                return E9(sArr, Pe2 + 1);
            }
        }
        return dz(sArr);
    }

    @NotNull
    public static final List<Short> nz(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        ArrayList arrayList = new ArrayList(sArr.length);
        for (short s10 : sArr) {
            arrayList.add(Short.valueOf(s10));
        }
        return arrayList;
    }

    public static final boolean o5(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return !(cArr.length == 0);
    }

    @NotNull
    public static final <K, V> Map<K, V> o6(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends K> keySelector, @NotNull Mf.l<? super Integer, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(iArr.length), 16));
        for (int i10 : iArr) {
            linkedHashMap.put(keySelector.invoke(Integer.valueOf(i10)), valueTransform.invoke(Integer.valueOf(i10)));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Short, ? super V>> M o7(short[] sArr, M destination, Mf.l<? super Short, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (short s10 : sArr) {
            destination.put(Short.valueOf(s10), valueSelector.invoke(Short.valueOf(s10)));
        }
        return destination;
    }

    @Ef.f
    public static final double o8(double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr[4];
    }

    @NotNull
    public static final <K> List<Byte> o9(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends K> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (byte b10 : bArr) {
            if (hashSet.add(selector.invoke(Byte.valueOf(b10)))) {
                arrayList.add(Byte.valueOf(b10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R, V> List<V> oA(@NotNull byte[] bArr, @NotNull R[] other, @NotNull Mf.p<? super Byte, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(bArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Byte.valueOf(bArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    public static final short oa(short[] sArr, int i10, Mf.l<? super Integer, Short> defaultValue) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= sArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).shortValue() : sArr[i10];
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Character>> C ob(@NotNull char[] cArr, @NotNull C destination, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (!predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                destination.add(Character.valueOf(c10));
            }
        }
        return destination;
    }

    public static final boolean oc(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return z10;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C od(@NotNull byte[] bArr, @NotNull C destination, @NotNull Mf.l<? super Byte, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (byte b10 : bArr) {
            M.t0(destination, transform.invoke(Byte.valueOf(b10)));
        }
        return destination;
    }

    public static final void oe(@NotNull short[] sArr, @NotNull Mf.l<? super Short, P0> action) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (short s10 : sArr) {
            action.invoke(Short.valueOf(s10));
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> of(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends K> keySelector, @NotNull Mf.l<? super Double, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (double d10 : dArr) {
            K invoke = keySelector.invoke(Double.valueOf(d10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Double.valueOf(d10)));
        }
        return linkedHashMap;
    }

    public static final int og(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = dArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Double.valueOf(dArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final String oh(@NotNull byte[] bArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Byte, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) Wg(bArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Double oi(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = dArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            double d10 = dArr[length];
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return Double.valueOf(d10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Byte oj(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        if (Ie2 == 0) {
            return Byte.valueOf(b10);
        }
        R invoke = selector.invoke(Byte.valueOf(b10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                R invoke2 = selector.invoke(Byte.valueOf(b11));
                if (invoke.compareTo(invoke2) < 0) {
                    b10 = b11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R ok(boolean[] zArr, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        R invoke = selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                R invoke2 = selector.invoke(Boolean.valueOf(zArr[i10]));
                if (invoke.compareTo(invoke2) < 0) {
                    invoke = invoke2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final float ol(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = fArr[0].floatValue();
        int Oe2 = Oe(fArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.max(floatValue, fArr[i10].floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float om(double[] dArr, Mf.l<? super Double, Float> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Double.valueOf(dArr[0])).floatValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Double.valueOf(dArr[i10])).floatValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R on(byte[] bArr, Comparator<? super R> comparator, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Byte.valueOf(bArr[i10]));
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

    public static final boolean oo(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return dArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final long op(@NotNull long[] jArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (jArr.length != 0) {
            return jArr[random.m(jArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean oq(@NotNull boolean[] zArr, @NotNull Mf.p<? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                z10 = operation.invoke(Boolean.valueOf(z10), Boolean.valueOf(zArr[i10])).booleanValue();
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    public static final void or(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = (fArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Le2 = Le(fArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            float f10 = fArr[i10];
            fArr[i10] = fArr[Le2];
            fArr[Le2] = f10;
            Le2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Integer> os(int[] iArr, Mf.p<? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return H.J();
        }
        int i10 = iArr[0];
        ArrayList arrayList = new ArrayList(iArr.length);
        arrayList.add(Integer.valueOf(i10));
        int length = iArr.length;
        for (int i11 = 1; i11 < length; i11++) {
            i10 = operation.invoke(Integer.valueOf(i10), Integer.valueOf(iArr[i11])).intValue();
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    public static final byte ot(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Byte b10 = null;
        boolean z10 = false;
        for (byte b11 : bArr) {
            if (predicate.invoke(Byte.valueOf(b11)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                b10 = Byte.valueOf(b11);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(b10, "null cannot be cast to non-null type kotlin.Byte");
        return b10.byteValue();
    }

    @NotNull
    public static final List<Boolean> ou(@NotNull boolean[] zArr, @NotNull Iterable<Integer> indices) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int d02 = I.d0(indices, 10);
        if (d02 == 0) {
            return H.J();
        }
        ArrayList arrayList = new ArrayList(d02);
        Iterator<Integer> it = indices.iterator();
        while (it.hasNext()) {
            arrayList.add(Boolean.valueOf(zArr[it.next().intValue()]));
        }
        return arrayList;
    }

    @NotNull
    public static final short[] ov(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return sArr;
        }
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        C14985q.W3(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Short> ow(@NotNull short[] sArr, @NotNull Iterable<Short> other) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Short> wz = wz(sArr);
        M.K0(wz, other);
        return wz;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long ox(int[] iArr, Mf.l<? super Integer, Long> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (int i10 : iArr) {
            j10 += selector.invoke(Integer.valueOf(i10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Boolean> oy(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int Qe2 = Qe(zArr); -1 < Qe2; Qe2--) {
            if (!predicate.invoke(Boolean.valueOf(zArr[Qe2])).booleanValue()) {
                return F9(zArr, Qe2 + 1);
            }
        }
        return ez(zArr);
    }

    @NotNull
    public static final List<Boolean> oz(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z10 : zArr) {
            arrayList.add(Boolean.valueOf(z10));
        }
        return arrayList;
    }

    public static final boolean p5(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <K> Map<K, Long> p6(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(jArr.length), 16));
        for (long j10 : jArr) {
            linkedHashMap.put(keySelector.invoke(Long.valueOf(j10)), Long.valueOf(j10));
        }
        return linkedHashMap;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final <V, M extends Map<? super Boolean, ? super V>> M p7(boolean[] zArr, M destination, Mf.l<? super Boolean, ? extends V> valueSelector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(valueSelector, "valueSelector");
        for (boolean z10 : zArr) {
            destination.put(Boolean.valueOf(z10), valueSelector.invoke(Boolean.valueOf(z10)));
        }
        return destination;
    }

    @Ef.f
    public static final float p8(float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr[4];
    }

    @NotNull
    public static final <K> List<Character> p9(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends K> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (char c10 : cArr) {
            if (hashSet.add(selector.invoke(Character.valueOf(c10)))) {
                arrayList.add(Character.valueOf(c10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R> List<nf.Z<Character, R>> pA(@NotNull char[] cArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = cArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Character.valueOf(cArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    public static final boolean pa(boolean[] zArr, int i10, Mf.l<? super Integer, Boolean> defaultValue) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(defaultValue, "defaultValue");
        return (i10 < 0 || i10 >= zArr.length) ? defaultValue.invoke(Integer.valueOf(i10)).booleanValue() : zArr[i10];
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Double>> C pb(@NotNull double[] dArr, @NotNull C destination, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (!predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                destination.add(Double.valueOf(d10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T, R> R pc(T[] tArr, Mf.l<? super T, ? extends R> transform) {
        R r10;
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = tArr.length;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                r10 = transform.invoke(tArr[i10]);
                if (r10 != null) {
                    break;
                }
                i10++;
            } else {
                r10 = null;
                break;
            }
        }
        if (r10 != null) {
            return r10;
        }
        throw new NoSuchElementException("No element of the array was transformed to a non-null value.");
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C pd(@NotNull char[] cArr, @NotNull C destination, @NotNull Mf.l<? super Character, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (char c10 : cArr) {
            M.t0(destination, transform.invoke(Character.valueOf(c10)));
        }
        return destination;
    }

    public static final void pe(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, P0> action) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        for (boolean z10 : zArr) {
            action.invoke(Boolean.valueOf(z10));
        }
    }

    @NotNull
    public static final <K> Map<K, List<Float>> pf(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (float f10 : fArr) {
            K invoke = keySelector.invoke(Float.valueOf(f10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Float.valueOf(f10));
        }
        return linkedHashMap;
    }

    public static final int pg(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = fArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Float.valueOf(fArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final String ph(@NotNull char[] cArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Character, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) Xg(cArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Float pi(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        return Float.valueOf(fArr[fArr.length - 1]);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Character pj(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        if (Je2 == 0) {
            return Character.valueOf(c10);
        }
        R invoke = selector.invoke(Character.valueOf(c10));
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                R invoke2 = selector.invoke(Character.valueOf(c11));
                if (invoke.compareTo(invoke2) < 0) {
                    c10 = c11;
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double pk(byte[] bArr, Mf.l<? super Byte, Double> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Byte.valueOf(bArr[0])).doubleValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Byte.valueOf(bArr[i10])).doubleValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final int pl(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (i10 < i12) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float pm(float[] fArr, Mf.l<? super Float, Float> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Float.valueOf(fArr[0])).floatValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Float.valueOf(fArr[i10])).floatValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R pn(char[] cArr, Comparator<? super R> comparator, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Character.valueOf(cArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final boolean po(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final <T> T pp(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (T) qp(tArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte pq(@NotNull byte[] bArr, @NotNull Mf.p<? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                b10 = operation.invoke(Byte.valueOf(b10), Byte.valueOf(bArr[i10])).byteValue();
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void pr(@NotNull float[] fArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, fArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            float f10 = fArr[i10];
            fArr[i10] = fArr[i13];
            fArr[i13] = f10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Long> ps(long[] jArr, Mf.p<? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return H.J();
        }
        long j10 = jArr[0];
        ArrayList arrayList = new ArrayList(jArr.length);
        arrayList.add(Long.valueOf(j10));
        int length = jArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            j10 = operation.invoke(Long.valueOf(j10), Long.valueOf(jArr[i10])).longValue();
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static char pt(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static byte[] pu(@NotNull byte[] bArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new byte[0] : C14985q.f1(bArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final byte[] pv(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Ju(copyOf);
        return copyOf;
    }

    @NotNull
    public static final Set<Boolean> pw(@NotNull boolean[] zArr, @NotNull Iterable<Boolean> other) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Boolean> xz = xz(zArr);
        M.K0(xz, other);
        return xz;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long px(long[] jArr, Mf.l<? super Long, Long> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += selector.invoke(Long.valueOf(j11)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Byte> py(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (byte b10 : bArr) {
            if (!predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                break;
            }
            arrayList.add(Byte.valueOf(b10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Byte> pz(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return (Set) By(bArr, new LinkedHashSet(n0.j(bArr.length)));
    }

    public static final boolean q5(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return !(dArr.length == 0);
    }

    @NotNull
    public static final <K, V> Map<K, V> q6(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends K> keySelector, @NotNull Mf.l<? super Long, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(jArr.length), 16));
        for (long j10 : jArr) {
            linkedHashMap.put(keySelector.invoke(Long.valueOf(j10)), valueTransform.invoke(Long.valueOf(j10)));
        }
        return linkedHashMap;
    }

    public static final double q7(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (byte b10 : bArr) {
            d10 += b10;
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @Ef.f
    public static final int q8(int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr[4];
    }

    @NotNull
    public static final <K> List<Double> q9(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends K> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (double d10 : dArr) {
            if (hashSet.add(selector.invoke(Double.valueOf(d10)))) {
                arrayList.add(Double.valueOf(d10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R, V> List<V> qA(@NotNull char[] cArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Character, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = cArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Character.valueOf(cArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    public static final Boolean qa(boolean[] zArr, int i10) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return af(zArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Float>> C qb(@NotNull float[] fArr, @NotNull C destination, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (!predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                destination.add(Float.valueOf(f10));
            }
        }
        return destination;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.5")
    public static final <T, R> R qc(T[] tArr, Mf.l<? super T, ? extends R> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (T t10 : tArr) {
            R invoke = transform.invoke(t10);
            if (invoke != null) {
                return invoke;
            }
        }
        return null;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C qd(@NotNull double[] dArr, @NotNull C destination, @NotNull Mf.l<? super Double, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (double d10 : dArr) {
            M.t0(destination, transform.invoke(Double.valueOf(d10)));
        }
        return destination;
    }

    public static final void qe(@NotNull byte[] bArr, @NotNull Mf.p<? super Integer, ? super Byte, P0> action) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Byte.valueOf(bArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> qf(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends K> keySelector, @NotNull Mf.l<? super Float, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (float f10 : fArr) {
            K invoke = keySelector.invoke(Float.valueOf(f10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Float.valueOf(f10)));
        }
        return linkedHashMap;
    }

    public static final int qg(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Integer.valueOf(iArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final String qh(@NotNull double[] dArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Double, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) Yg(dArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Float qi(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = fArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            float f10 = fArr[length];
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return Float.valueOf(f10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Double qj(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        if (Ke2 == 0) {
            return Double.valueOf(d10);
        }
        R invoke = selector.invoke(Double.valueOf(d10));
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                R invoke2 = selector.invoke(Double.valueOf(d11));
                if (invoke.compareTo(invoke2) < 0) {
                    d10 = d11;
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double qk(char[] cArr, Mf.l<? super Character, Double> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Character.valueOf(cArr[0])).doubleValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Character.valueOf(cArr[i10])).doubleValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final long ql(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (j10 < j11) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return j10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float qm(int[] iArr, Mf.l<? super Integer, Float> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Integer.valueOf(iArr[0])).floatValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Integer.valueOf(iArr[i10])).floatValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R qn(double[] dArr, Comparator<? super R> comparator, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Double.valueOf(dArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final boolean qo(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return fArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final <T> T qp(@NotNull T[] tArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (tArr.length != 0) {
            return tArr[random.m(tArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character qq(@NotNull char[] cArr, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                c10 = operation.invoke(Character.valueOf(c10), Character.valueOf(cArr[i10])).charValue();
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    public static void qr(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = (iArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Me2 = Me(iArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            int i11 = iArr[i10];
            iArr[i10] = iArr[Me2];
            iArr[Me2] = i11;
            Me2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S, T extends S> List<S> qs(@NotNull T[] tArr, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return H.J();
        }
        S s10 = (Object) tArr[0];
        ArrayList arrayList = new ArrayList(tArr.length);
        arrayList.add(s10);
        int length = tArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            s10 = operation.invoke(s10, (Object) tArr[i10]);
            arrayList.add(s10);
        }
        return arrayList;
    }

    public static final char qt(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Character ch2 = null;
        boolean z10 = false;
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                ch2 = Character.valueOf(c10);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(ch2, "null cannot be cast to non-null type kotlin.Char");
        return ch2.charValue();
    }

    @NotNull
    public static byte[] qu(@NotNull byte[] bArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        byte[] bArr2 = new byte[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            bArr2[i10] = bArr[it.next().intValue()];
            i10++;
        }
        return bArr2;
    }

    @NotNull
    public static final char[] qv(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return cArr;
        }
        char[] copyOf = Arrays.copyOf(cArr, cArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Lu(copyOf);
        return copyOf;
    }

    public static final double qw(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double d10 = 0.0d;
        for (double d11 : dArr) {
            d10 += d11;
        }
        return d10;
    }

    @Lf.j(name = "sumOfLong")
    public static final long qx(@NotNull Long[] lArr) {
        kotlin.jvm.internal.M.p(lArr, "<this>");
        long j10 = 0;
        for (Long l10 : lArr) {
            j10 += l10.longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Character> qy(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (char c10 : cArr) {
            if (!predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                break;
            }
            arrayList.add(Character.valueOf(c10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Character> qz(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return (Set) Cy(cArr, new LinkedHashSet(n0.j(Vf.u.D(cArr.length, 128))));
    }

    public static final boolean r5(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <T, K> Map<K, T> r6(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(tArr.length), 16));
        for (T t10 : tArr) {
            linkedHashMap.put(keySelector.invoke(t10), t10);
        }
        return linkedHashMap;
    }

    public static final double r7(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (double d11 : dArr) {
            d10 += d11;
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @Ef.f
    public static final long r8(long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr[4];
    }

    @NotNull
    public static final <K> List<Float> r9(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends K> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (float f10 : fArr) {
            if (hashSet.add(selector.invoke(Float.valueOf(f10)))) {
                arrayList.add(Float.valueOf(f10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final List<nf.Z<Character, Character>> rA(@NotNull char[] cArr, @NotNull char[] other) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(cArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Character.valueOf(cArr[i10]), Character.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final Byte ra(byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return bf(bArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Integer>> C rb(@NotNull int[] iArr, @NotNull C destination, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (!predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                destination.add(Integer.valueOf(i10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Boolean rc(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        if (zArr.length == 0) {
            return null;
        }
        return Boolean.valueOf(zArr[0]);
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C rd(@NotNull float[] fArr, @NotNull C destination, @NotNull Mf.l<? super Float, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (float f10 : fArr) {
            M.t0(destination, transform.invoke(Float.valueOf(f10)));
        }
        return destination;
    }

    public static final void re(@NotNull char[] cArr, @NotNull Mf.p<? super Integer, ? super Character, P0> action) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = cArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Character.valueOf(cArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K> Map<K, List<Integer>> rf(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i10 : iArr) {
            K invoke = keySelector.invoke(Integer.valueOf(i10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Integer.valueOf(i10));
        }
        return linkedHashMap;
    }

    public static final int rg(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = jArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Long.valueOf(jArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final String rh(@NotNull float[] fArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Float, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) Zg(fArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Integer ri(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        return Integer.valueOf(iArr[iArr.length - 1]);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Float rj(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        if (Le2 == 0) {
            return Float.valueOf(f10);
        }
        R invoke = selector.invoke(Float.valueOf(f10));
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                R invoke2 = selector.invoke(Float.valueOf(f11));
                if (invoke.compareTo(invoke2) < 0) {
                    f10 = f11;
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double rk(double[] dArr, Mf.l<? super Double, Double> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Double.valueOf(dArr[0])).doubleValue();
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Double.valueOf(dArr[i10])).doubleValue());
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    @NotNull
    public static final <T extends Comparable<? super T>> T rl(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (t10.compareTo(t11) < 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float rm(long[] jArr, Mf.l<? super Long, Float> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Long.valueOf(jArr[0])).floatValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Long.valueOf(jArr[i10])).floatValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R rn(float[] fArr, Comparator<? super R> comparator, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Float.valueOf(fArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final boolean ro(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final short rp(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sp(sArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double rq(@NotNull double[] dArr, @NotNull Mf.p<? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                d10 = operation.invoke(Double.valueOf(d10), Double.valueOf(dArr[i10])).doubleValue();
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static void rr(@NotNull int[] iArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, iArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            int i14 = iArr[i10];
            iArr[i10] = iArr[i13];
            iArr[i13] = i14;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Short> rs(short[] sArr, Mf.p<? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return H.J();
        }
        short s10 = sArr[0];
        ArrayList arrayList = new ArrayList(sArr.length);
        arrayList.add(Short.valueOf(s10));
        int length = sArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            s10 = operation.invoke(Short.valueOf(s10), Short.valueOf(sArr[i10])).shortValue();
            arrayList.add(Short.valueOf(s10));
        }
        return arrayList;
    }

    public static final double rt(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        int length = dArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return dArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static final char[] ru(@NotNull char[] cArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new char[0] : C14985q.g1(cArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final double[] rv(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return dArr;
        }
        double[] copyOf = Arrays.copyOf(dArr, dArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Nu(copyOf);
        return copyOf;
    }

    public static final float rw(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        float f10 = 0.0f;
        for (float f11 : fArr) {
            f10 += f11;
        }
        return f10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final <T> long rx(T[] tArr, Mf.l<? super T, Long> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (T t10 : tArr) {
            j10 += selector.invoke(t10).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Double> ry(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (double d10 : dArr) {
            if (!predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                break;
            }
            arrayList.add(Double.valueOf(d10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Double> rz(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return (Set) Dy(dArr, new LinkedHashSet(n0.j(dArr.length)));
    }

    public static final boolean s5(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return !(fArr.length == 0);
    }

    @NotNull
    public static final <T, K, V> Map<K, V> s6(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(tArr.length), 16));
        for (T t10 : tArr) {
            linkedHashMap.put(keySelector.invoke(t10), valueTransform.invoke(t10));
        }
        return linkedHashMap;
    }

    public static final double s7(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (float f10 : fArr) {
            d10 += f10;
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @Ef.f
    public static final <T> T s8(T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr[4];
    }

    @NotNull
    public static final <K> List<Integer> s9(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends K> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (hashSet.add(selector.invoke(Integer.valueOf(i10)))) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <V> List<V> sA(@NotNull char[] cArr, @NotNull char[] other, @NotNull Mf.p<? super Character, ? super Character, ? extends V> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(cArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Character.valueOf(cArr[i10]), Character.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final Character sa(char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return cf(cArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Long>> C sb(@NotNull long[] jArr, @NotNull C destination, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (!predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                destination.add(Long.valueOf(j10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Boolean sc(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                return Boolean.valueOf(z10);
            }
        }
        return null;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C sd(@NotNull int[] iArr, @NotNull C destination, @NotNull Mf.l<? super Integer, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (int i10 : iArr) {
            M.t0(destination, transform.invoke(Integer.valueOf(i10)));
        }
        return destination;
    }

    public static final void se(@NotNull double[] dArr, @NotNull Mf.p<? super Integer, ? super Double, P0> action) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = dArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Double.valueOf(dArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> sf(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends K> keySelector, @NotNull Mf.l<? super Integer, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i10 : iArr) {
            K invoke = keySelector.invoke(Integer.valueOf(i10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Integer.valueOf(i10)));
        }
        return linkedHashMap;
    }

    public static final <T> int sg(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = tArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(tArr[length]).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final String sh(@NotNull int[] iArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Integer, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) ah(iArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Integer si(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = iArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            int i11 = iArr[length];
            if (predicate.invoke(Integer.valueOf(i11)).booleanValue()) {
                return Integer.valueOf(i11);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Integer sj(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        if (Me2 == 0) {
            return Integer.valueOf(i10);
        }
        R invoke = selector.invoke(Integer.valueOf(i10));
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                R invoke2 = selector.invoke(Integer.valueOf(i12));
                if (invoke.compareTo(invoke2) < 0) {
                    i10 = i12;
                    invoke = invoke2;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double sk(float[] fArr, Mf.l<? super Float, Double> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Float.valueOf(fArr[0])).doubleValue();
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Float.valueOf(fArr[i10])).doubleValue());
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @Lf.j(name = "maxOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final short sl(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                if (s10 < s11) {
                    s10 = s11;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> float sm(T[] tArr, Mf.l<? super T, Float> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(tArr[0]).floatValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(tArr[i10]).floatValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R sn(int[] iArr, Comparator<? super R> comparator, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Integer.valueOf(iArr[i10]));
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

    public static final boolean so(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return iArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final short sp(@NotNull short[] sArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (sArr.length != 0) {
            return sArr[random.m(sArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float sq(@NotNull float[] fArr, @NotNull Mf.p<? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                f10 = operation.invoke(Float.valueOf(f10), Float.valueOf(fArr[i10])).floatValue();
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    public static void sr(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = (jArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Ne2 = Ne(jArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            jArr[i10] = jArr[Ne2];
            jArr[Ne2] = j10;
            Ne2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Boolean> ss(boolean[] zArr, Mf.p<? super Boolean, ? super Boolean, Boolean> operation) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (zArr.length == 0) {
            return H.J();
        }
        boolean z10 = zArr[0];
        ArrayList arrayList = new ArrayList(zArr.length);
        arrayList.add(Boolean.valueOf(z10));
        int length = zArr.length;
        int i10 = 1;
        while (i10 < length) {
            Boolean invoke = operation.invoke(Boolean.valueOf(z10), Boolean.valueOf(zArr[i10]));
            boolean booleanValue = invoke.booleanValue();
            arrayList.add(invoke);
            i10++;
            z10 = booleanValue;
        }
        return arrayList;
    }

    public static final double st(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Double d10 = null;
        boolean z10 = false;
        for (double d11 : dArr) {
            if (predicate.invoke(Double.valueOf(d11)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                d10 = Double.valueOf(d11);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(d10, "null cannot be cast to non-null type kotlin.Double");
        return d10.doubleValue();
    }

    @NotNull
    public static final char[] su(@NotNull char[] cArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        char[] cArr2 = new char[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            cArr2[i10] = cArr[it.next().intValue()];
            i10++;
        }
        return cArr2;
    }

    @NotNull
    public static final float[] sv(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return fArr;
        }
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Pu(copyOf);
        return copyOf;
    }

    public static final int sw(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int i10 = 0;
        for (byte b10 : bArr) {
            i10 += b10;
        }
        return i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long sx(short[] sArr, Mf.l<? super Short, Long> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (short s10 : sArr) {
            j10 += selector.invoke(Short.valueOf(s10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Float> sy(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (float f10 : fArr) {
            if (!predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                break;
            }
            arrayList.add(Float.valueOf(f10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Float> sz(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return (Set) Ey(fArr, new LinkedHashSet(n0.j(fArr.length)));
    }

    public static final boolean t5(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <K> Map<K, Short> t6(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(sArr.length), 16));
        for (short s10 : sArr) {
            linkedHashMap.put(keySelector.invoke(Short.valueOf(s10)), Short.valueOf(s10));
        }
        return linkedHashMap;
    }

    public static final double t7(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (int i11 : iArr) {
            d10 += i11;
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @Ef.f
    public static final short t8(short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr[4];
    }

    @NotNull
    public static final <K> List<Long> t9(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends K> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (long j10 : jArr) {
            if (hashSet.add(selector.invoke(Long.valueOf(j10)))) {
                arrayList.add(Long.valueOf(j10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R> List<nf.Z<Character, R>> tA(@NotNull char[] cArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(cArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            char c10 = cArr[i10];
            arrayList.add(nf.v0.a(Character.valueOf(c10), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    public static final Double ta(double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        return df(dArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, C extends Collection<? super T>> C tb(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (!predicate.invoke(t10).booleanValue()) {
                destination.add(t10);
            }
        }
        return destination;
    }

    @Nullable
    public static final Byte tc(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return null;
        }
        return Byte.valueOf(bArr[0]);
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C td(@NotNull long[] jArr, @NotNull C destination, @NotNull Mf.l<? super Long, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (long j10 : jArr) {
            M.t0(destination, transform.invoke(Long.valueOf(j10)));
        }
        return destination;
    }

    public static final void te(@NotNull float[] fArr, @NotNull Mf.p<? super Integer, ? super Float, P0> action) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Float.valueOf(fArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K> Map<K, List<Long>> tf(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (long j10 : jArr) {
            K invoke = keySelector.invoke(Long.valueOf(j10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Long.valueOf(j10));
        }
        return linkedHashMap;
    }

    public static final int tg(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = sArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Short.valueOf(sArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final String th(@NotNull long[] jArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Long, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) bh(jArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Long ti(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return null;
        }
        return Long.valueOf(jArr[jArr.length - 1]);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Long tj(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        if (Ne2 == 0) {
            return Long.valueOf(j10);
        }
        R invoke = selector.invoke(Long.valueOf(j10));
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                R invoke2 = selector.invoke(Long.valueOf(j11));
                if (invoke.compareTo(invoke2) < 0) {
                    j10 = j11;
                    invoke = invoke2;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double tk(int[] iArr, Mf.l<? super Integer, Double> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Integer.valueOf(iArr[0])).doubleValue();
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Integer.valueOf(iArr[i10])).doubleValue());
                if (i10 == Me2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean tl(@NotNull boolean[] zArr, @NotNull Comparator<? super Boolean> comparator) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (zArr.length == 0) {
            return null;
        }
        boolean z10 = zArr[0];
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                boolean z11 = zArr[i10];
                if (comparator.compare(Boolean.valueOf(z10), Boolean.valueOf(z11)) < 0) {
                    z10 = z11;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Boolean.valueOf(z10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float tm(short[] sArr, Mf.l<? super Short, Float> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Short.valueOf(sArr[0])).floatValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Short.valueOf(sArr[i10])).floatValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R tn(long[] jArr, Comparator<? super R> comparator, Mf.l<? super Long, ? extends R> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Long.valueOf(jArr[0]));
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Long.valueOf(jArr[i10]));
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

    public static final boolean to(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.3")
    public static final boolean tp(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return up(zArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer tq(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                i10 = operation.invoke(Integer.valueOf(i10), Integer.valueOf(iArr[i11])).intValue();
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @InterfaceC14422l0(version = "1.4")
    public static void tr(@NotNull long[] jArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, jArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            long j10 = jArr[i10];
            jArr[i10] = jArr[i13];
            jArr[i13] = j10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Byte> ts(byte[] bArr, Mf.q<? super Integer, ? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (bArr.length == 0) {
            return H.J();
        }
        byte b10 = bArr[0];
        ArrayList arrayList = new ArrayList(bArr.length);
        arrayList.add(Byte.valueOf(b10));
        int length = bArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            b10 = operation.n(Integer.valueOf(i10), Byte.valueOf(b10), Byte.valueOf(bArr[i10])).byteValue();
            arrayList.add(Byte.valueOf(b10));
        }
        return arrayList;
    }

    public static final float tt(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        int length = fArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return fArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static final double[] tu(@NotNull double[] dArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new double[0] : C14985q.h1(dArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final int[] tv(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        if (iArr.length == 0) {
            return iArr;
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Ru(copyOf);
        return copyOf;
    }

    public static int tw(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        return i10;
    }

    @nf.Y
    @Ef.f
    @Lf.j(name = "sumOfLong")
    @InterfaceC14422l0(version = "1.4")
    public static final long tx(boolean[] zArr, Mf.l<? super Boolean, Long> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        long j10 = 0;
        for (boolean z10 : zArr) {
            j10 += selector.invoke(Boolean.valueOf(z10)).longValue();
        }
        return j10;
    }

    @NotNull
    public static final List<Integer> ty(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (!predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                break;
            }
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Integer> tz(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return (Set) Fy(iArr, new LinkedHashSet(n0.j(iArr.length)));
    }

    public static boolean u5(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return !(iArr.length == 0);
    }

    @NotNull
    public static final <K, V> Map<K, V> u6(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends K> keySelector, @NotNull Mf.l<? super Short, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(sArr.length), 16));
        for (short s10 : sArr) {
            linkedHashMap.put(keySelector.invoke(Short.valueOf(s10)), valueTransform.invoke(Short.valueOf(s10)));
        }
        return linkedHashMap;
    }

    public static final double u7(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (long j10 : jArr) {
            d10 += j10;
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @Ef.f
    public static final boolean u8(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return zArr[4];
    }

    @NotNull
    public static final <T, K> List<T> u9(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends K> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            if (hashSet.add(selector.invoke(t10))) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R, V> List<V> uA(@NotNull char[] cArr, @NotNull R[] other, @NotNull Mf.p<? super Character, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(cArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Character.valueOf(cArr[i10]), other[i10]));
        }
        return arrayList;
    }

    @Ef.f
    public static final Float ua(float[] fArr, int i10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        return ef(fArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Short>> C ub(@NotNull short[] sArr, @NotNull C destination, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (!predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                destination.add(Short.valueOf(s10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Byte uc(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                return Byte.valueOf(b10);
            }
        }
        return null;
    }

    @InterfaceC14394D
    @NotNull
    public static final <T, R, C extends Collection<? super R>> C ud(@NotNull T[] tArr, @NotNull C destination, @NotNull Mf.l<? super T, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (T t10 : tArr) {
            M.t0(destination, transform.invoke(t10));
        }
        return destination;
    }

    public static final void ue(@NotNull int[] iArr, @NotNull Mf.p<? super Integer, ? super Integer, P0> action) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> uf(@NotNull long[] jArr, @NotNull Mf.l<? super Long, ? extends K> keySelector, @NotNull Mf.l<? super Long, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (long j10 : jArr) {
            K invoke = keySelector.invoke(Long.valueOf(j10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Long.valueOf(j10)));
        }
        return linkedHashMap;
    }

    public static final int ug(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = zArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (predicate.invoke(Boolean.valueOf(zArr[length])).booleanValue()) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final <T> String uh(@NotNull T[] tArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) ch(tArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final Long ui(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = jArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            long j10 = jArr[length];
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return Long.valueOf(j10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T, R extends Comparable<? super R>> T uj(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        if (Oe2 == 0) {
            return t10;
        }
        R invoke = selector.invoke(t10);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                R invoke2 = selector.invoke(t11);
                if (invoke.compareTo(invoke2) < 0) {
                    t10 = t11;
                    invoke = invoke2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double uk(long[] jArr, Mf.l<? super Long, Double> selector) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (jArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Long.valueOf(jArr[0])).doubleValue();
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Long.valueOf(jArr[i10])).doubleValue());
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte ul(@NotNull byte[] bArr, @NotNull Comparator<? super Byte> comparator) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (comparator.compare(Byte.valueOf(b10), Byte.valueOf(b11)) < 0) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final float um(boolean[] zArr, Mf.l<? super Boolean, Float> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            throw new NoSuchElementException();
        }
        float floatValue = selector.invoke(Boolean.valueOf(zArr[0])).floatValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                floatValue = Math.min(floatValue, selector.invoke(Boolean.valueOf(zArr[i10])).floatValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return floatValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T, R> R un(T[] tArr, Comparator<? super R> comparator, Mf.l<? super T, ? extends R> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(tArr[0]);
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(tArr[i10]);
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final boolean uo(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return jArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.3")
    public static final boolean up(@NotNull boolean[] zArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (zArr.length != 0) {
            return zArr[random.m(zArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long uq(@NotNull long[] jArr, @NotNull Mf.p<? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                j10 = operation.invoke(Long.valueOf(j10), Long.valueOf(jArr[i10])).longValue();
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    public static final <T> void ur(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int length = (tArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Oe2 = Oe(tArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            T t10 = tArr[i10];
            tArr[i10] = tArr[Oe2];
            tArr[Oe2] = t10;
            Oe2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Character> us(char[] cArr, Mf.q<? super Integer, ? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (cArr.length == 0) {
            return H.J();
        }
        char c10 = cArr[0];
        ArrayList arrayList = new ArrayList(cArr.length);
        arrayList.add(Character.valueOf(c10));
        int length = cArr.length;
        int i10 = 1;
        while (i10 < length) {
            Character n10 = operation.n(Integer.valueOf(i10), Character.valueOf(c10), Character.valueOf(cArr[i10]));
            char charValue = n10.charValue();
            arrayList.add(n10);
            i10++;
            c10 = charValue;
        }
        return arrayList;
    }

    public static final float ut(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Float f10 = null;
        boolean z10 = false;
        for (float f11 : fArr) {
            if (predicate.invoke(Float.valueOf(f11)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                f10 = Float.valueOf(f11);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(f10, "null cannot be cast to non-null type kotlin.Float");
        return f10.floatValue();
    }

    @NotNull
    public static final double[] uu(@NotNull double[] dArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        double[] dArr2 = new double[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            dArr2[i10] = dArr[it.next().intValue()];
            i10++;
        }
        return dArr2;
    }

    @NotNull
    public static final long[] uv(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        if (jArr.length == 0) {
            return jArr;
        }
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Tu(copyOf);
        return copyOf;
    }

    public static final int uw(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int i10 = 0;
        for (short s10 : sArr) {
            i10 += s10;
        }
        return i10;
    }

    @Lf.j(name = "sumOfShort")
    public static final int ux(@NotNull Short[] shArr) {
        kotlin.jvm.internal.M.p(shArr, "<this>");
        int i10 = 0;
        for (Short sh2 : shArr) {
            i10 += sh2.shortValue();
        }
        return i10;
    }

    @NotNull
    public static final List<Long> uy(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (long j10 : jArr) {
            if (!predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                break;
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Long> uz(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return (Set) Gy(jArr, new LinkedHashSet(n0.j(jArr.length)));
    }

    public static final boolean v5(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final <K> Map<K, Boolean> v6(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(zArr.length), 16));
        for (boolean z10 : zArr) {
            linkedHashMap.put(keySelector.invoke(Boolean.valueOf(z10)), Boolean.valueOf(z10));
        }
        return linkedHashMap;
    }

    public static final double v7(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (short s10 : sArr) {
            d10 += s10;
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    public static boolean v8(@NotNull byte[] bArr, byte b10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return Uf(bArr, b10) >= 0;
    }

    @NotNull
    public static final <K> List<Short> v9(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends K> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (short s10 : sArr) {
            if (hashSet.add(selector.invoke(Short.valueOf(s10)))) {
                arrayList.add(Short.valueOf(s10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R> List<nf.Z<Double, R>> vA(@NotNull double[] dArr, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int length = dArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(nf.v0.a(Double.valueOf(dArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    public static final Integer va(int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return ff(iArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Boolean>> C vb(@NotNull boolean[] zArr, @NotNull C destination, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (boolean z10 : zArr) {
            if (!predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                destination.add(Boolean.valueOf(z10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Character vc(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return null;
        }
        return Character.valueOf(cArr[0]);
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C vd(@NotNull short[] sArr, @NotNull C destination, @NotNull Mf.l<? super Short, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (short s10 : sArr) {
            M.t0(destination, transform.invoke(Short.valueOf(s10)));
        }
        return destination;
    }

    public static final void ve(@NotNull long[] jArr, @NotNull Mf.p<? super Integer, ? super Long, P0> action) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = jArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Long.valueOf(jArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <T, K> Map<K, List<T>> vf(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (T t10 : tArr) {
            K invoke = keySelector.invoke(t10);
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(t10);
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Set<Byte> vg(@NotNull byte[] bArr, @NotNull Iterable<Byte> other) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Byte> pz = pz(bArr);
        M.U0(pz, other);
        return pz;
    }

    @NotNull
    public static final String vh(@NotNull short[] sArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Short, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) dh(sArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final <T> T vi(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        return tArr[tArr.length - 1];
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <R extends Comparable<? super R>> Short vj(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        if (Pe2 == 0) {
            return Short.valueOf(s10);
        }
        R invoke = selector.invoke(Short.valueOf(s10));
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                short s11 = sArr[i10];
                R invoke2 = selector.invoke(Short.valueOf(s11));
                if (invoke.compareTo(invoke2) < 0) {
                    s10 = s11;
                    invoke = invoke2;
                }
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <T> Double vk(T[] tArr, Mf.l<? super T, Double> selector) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (tArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(tArr[0]).doubleValue();
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(tArr[i10]).doubleValue());
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character vl(@NotNull char[] cArr, @NotNull Comparator<? super Character> comparator) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (comparator.compare(Character.valueOf(c10), Character.valueOf(c11)) < 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R vm(byte[] bArr, Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Byte.valueOf(bArr[0]));
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                R invoke2 = selector.invoke(Byte.valueOf(bArr[i10]));
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

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R vn(short[] sArr, Comparator<? super R> comparator, Mf.l<? super Short, ? extends R> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Short.valueOf(sArr[0]));
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Short.valueOf(sArr[i10]));
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

    public static final boolean vo(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Boolean vp(boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return wp(zArr, Tf.f.f24956b);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <S, T extends S> S vq(@NotNull T[] tArr, @NotNull Mf.p<? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return null;
        }
        S s10 = (Object) tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                s10 = operation.invoke(s10, (Object) tArr[i10]);
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return s10;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final <T> void vr(@NotNull T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, tArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            T t10 = tArr[i10];
            tArr[i10] = tArr[i13];
            tArr[i13] = t10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Double> vs(double[] dArr, Mf.q<? super Integer, ? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (dArr.length == 0) {
            return H.J();
        }
        double d10 = dArr[0];
        ArrayList arrayList = new ArrayList(dArr.length);
        arrayList.add(Double.valueOf(d10));
        int length = dArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            d10 = operation.n(Integer.valueOf(i10), Double.valueOf(d10), Double.valueOf(dArr[i10])).doubleValue();
            arrayList.add(Double.valueOf(d10));
        }
        return arrayList;
    }

    public static int vt(@NotNull int[] iArr) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        int length = iArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return iArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static final float[] vu(@NotNull float[] fArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new float[0] : C14985q.i1(fArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> T[] vv(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return tArr;
        }
        Object[] copyOf = Arrays.copyOf(tArr, tArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        T[] tArr2 = (T[]) ((Comparable[]) copyOf);
        C14985q.h4(tArr2, C15420g.x());
        return tArr2;
    }

    public static long vw(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        return j10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int vx(byte[] bArr, Mf.l<? super Byte, nf.B0> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (byte b10 : bArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Byte.valueOf(b10)).q0());
        }
        return o10;
    }

    @NotNull
    public static final <T> List<T> vy(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (T t10 : tArr) {
            if (!predicate.invoke(t10).booleanValue()) {
                break;
            }
            arrayList.add(t10);
        }
        return arrayList;
    }

    @NotNull
    public static final <T> Set<T> vz(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (Set) Hy(tArr, new LinkedHashSet(n0.j(tArr.length)));
    }

    public static boolean w5(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return !(jArr.length == 0);
    }

    @NotNull
    public static final <K, V> Map<K, V> w6(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends K> keySelector, @NotNull Mf.l<? super Boolean, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(zArr.length), 16));
        for (boolean z10 : zArr) {
            linkedHashMap.put(keySelector.invoke(Boolean.valueOf(z10)), valueTransform.invoke(Boolean.valueOf(z10)));
        }
        return linkedHashMap;
    }

    @Lf.j(name = "averageOfByte")
    public static final double w7(@NotNull Byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (Byte b10 : bArr) {
            d10 += b10.byteValue();
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    public static boolean w8(@NotNull char[] cArr, char c10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return Vf(cArr, c10) >= 0;
    }

    @NotNull
    public static final <K> List<Boolean> w9(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends K> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (boolean z10 : zArr) {
            if (hashSet.add(selector.invoke(Boolean.valueOf(z10)))) {
                arrayList.add(Boolean.valueOf(z10));
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <R, V> List<V> wA(@NotNull double[] dArr, @NotNull Iterable<? extends R> other, @NotNull Mf.p<? super Double, ? super R, ? extends V> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int length = dArr.length;
        ArrayList arrayList = new ArrayList(Math.min(I.d0(other, 10), length));
        int i10 = 0;
        for (R r10 : other) {
            if (i10 >= length) {
                break;
            }
            arrayList.add(transform.invoke(Double.valueOf(dArr[i10]), r10));
            i10++;
        }
        return arrayList;
    }

    @Ef.f
    public static final Long wa(long[] jArr, int i10) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        return gf(jArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Byte>> C wb(@NotNull byte[] bArr, @NotNull C destination, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                destination.add(Byte.valueOf(b10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Character wc(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                return Character.valueOf(c10);
            }
        }
        return null;
    }

    @InterfaceC14394D
    @NotNull
    public static final <R, C extends Collection<? super R>> C wd(@NotNull boolean[] zArr, @NotNull C destination, @NotNull Mf.l<? super Boolean, ? extends Iterable<? extends R>> transform) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(transform, "transform");
        for (boolean z10 : zArr) {
            M.t0(destination, transform.invoke(Boolean.valueOf(z10)));
        }
        return destination;
    }

    public static final <T> void we(@NotNull T[] tArr, @NotNull Mf.p<? super Integer, ? super T, P0> action) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = tArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), tArr[i10]);
            i10++;
            i11++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, K, V> Map<K, List<V>> wf(@NotNull T[] tArr, @NotNull Mf.l<? super T, ? extends K> keySelector, @NotNull Mf.l<? super T, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (A.c cVar : tArr) {
            K invoke = keySelector.invoke(cVar);
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(cVar));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Set<Character> wg(@NotNull char[] cArr, @NotNull Iterable<Character> other) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Character> qz = qz(cArr);
        M.U0(qz, other);
        return qz;
    }

    @NotNull
    public static final String wh(@NotNull boolean[] zArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Mf.l<? super Boolean, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(separator, "separator");
        kotlin.jvm.internal.M.p(prefix, "prefix");
        kotlin.jvm.internal.M.p(postfix, "postfix");
        kotlin.jvm.internal.M.p(truncated, "truncated");
        return ((StringBuilder) eh(zArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    @Nullable
    public static final <T> T wi(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = tArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            T t10 = tArr[length];
            if (predicate.invoke(t10).booleanValue()) {
                return t10;
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> byte wj(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            throw new NoSuchElementException();
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        if (Ie2 == 0) {
            return b10;
        }
        R invoke = selector.invoke(Byte.valueOf(b10));
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                R invoke2 = selector.invoke(Byte.valueOf(b11));
                if (invoke.compareTo(invoke2) < 0) {
                    b10 = b11;
                    invoke = invoke2;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return b10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double wk(short[] sArr, Mf.l<? super Short, Double> selector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (sArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Short.valueOf(sArr[0])).doubleValue();
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Short.valueOf(sArr[i10])).doubleValue());
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Double wl(@NotNull double[] dArr, @NotNull Comparator<? super Double> comparator) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (dArr.length == 0) {
            return null;
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                if (comparator.compare(Double.valueOf(d10), Double.valueOf(d11)) < 0) {
                    d10 = d11;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(d10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R wm(char[] cArr, Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Character.valueOf(cArr[0]));
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                R invoke2 = selector.invoke(Character.valueOf(cArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R> R wn(boolean[] zArr, Comparator<? super R> comparator, Mf.l<? super Boolean, ? extends R> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        Object obj = (R) selector.invoke(Boolean.valueOf(zArr[0]));
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                Object obj2 = (R) selector.invoke(Boolean.valueOf(zArr[i10]));
                if (comparator.compare(obj, obj2) > 0) {
                    obj = (R) obj2;
                }
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return (R) obj;
    }

    public static final <T> boolean wo(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return tArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Boolean wp(@NotNull boolean[] zArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (zArr.length == 0) {
            return null;
        }
        return Boolean.valueOf(zArr[random.m(zArr.length)]);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Short wq(@NotNull short[] sArr, @NotNull Mf.p<? super Short, ? super Short, Short> operation) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (sArr.length == 0) {
            return null;
        }
        short s10 = sArr[0];
        int Pe2 = Pe(sArr);
        int i10 = 1;
        if (1 <= Pe2) {
            while (true) {
                s10 = operation.invoke(Short.valueOf(s10), Short.valueOf(sArr[i10])).shortValue();
                if (i10 == Pe2) {
                    break;
                }
                i10++;
            }
        }
        return Short.valueOf(s10);
    }

    public static void wr(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        int length = (sArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Pe2 = Pe(sArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            short s10 = sArr[i10];
            sArr[i10] = sArr[Pe2];
            sArr[Pe2] = s10;
            Pe2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Float> ws(float[] fArr, Mf.q<? super Integer, ? super Float, ? super Float, Float> operation) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (fArr.length == 0) {
            return H.J();
        }
        float f10 = fArr[0];
        ArrayList arrayList = new ArrayList(fArr.length);
        arrayList.add(Float.valueOf(f10));
        int length = fArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            f10 = operation.n(Integer.valueOf(i10), Float.valueOf(f10), Float.valueOf(fArr[i10])).floatValue();
            arrayList.add(Float.valueOf(f10));
        }
        return arrayList;
    }

    public static final int wt(@NotNull int[] iArr, @NotNull Mf.l<? super Integer, Boolean> predicate) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Integer num = null;
        boolean z10 = false;
        for (int i10 : iArr) {
            if (predicate.invoke(Integer.valueOf(i10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                num = Integer.valueOf(i10);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(num, "null cannot be cast to non-null type kotlin.Int");
        return num.intValue();
    }

    @NotNull
    public static final float[] wu(@NotNull float[] fArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        float[] fArr2 = new float[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            fArr2[i10] = fArr[it.next().intValue()];
            i10++;
        }
        return fArr2;
    }

    @NotNull
    public static final short[] wv(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return sArr;
        }
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        kotlin.jvm.internal.M.o(copyOf, "copyOf(...)");
        Xu(copyOf);
        return copyOf;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int ww(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Integer> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (byte b10 : bArr) {
            i10 += selector.invoke(Byte.valueOf(b10)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int wx(char[] cArr, Mf.l<? super Character, nf.B0> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (char c10 : cArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Character.valueOf(c10)).q0());
        }
        return o10;
    }

    @NotNull
    public static final List<Short> wy(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (short s10 : sArr) {
            if (!predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                break;
            }
            arrayList.add(Short.valueOf(s10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Short> wz(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return (Set) Iy(sArr, new LinkedHashSet(n0.j(sArr.length)));
    }

    public static final boolean x5(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Byte>> M x6(@NotNull byte[] bArr, @NotNull M destination, @NotNull Mf.l<? super Byte, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (byte b10 : bArr) {
            destination.put(keySelector.invoke(Byte.valueOf(b10)), Byte.valueOf(b10));
        }
        return destination;
    }

    @Lf.j(name = "averageOfDouble")
    public static final double x7(@NotNull Double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (Double d11 : dArr) {
            d10 += d11.doubleValue();
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @InterfaceC14427o(message = "The function has unclear behavior when searching for NaN or zero values and will be removed soon. Use 'any { it == element }' instead to continue using this behavior, or '.asList().contains(element: T)' to get the same search behavior as in a list.", replaceWith = @InterfaceC14412g0(expression = "any { it == element }", imports = {}))
    @InterfaceC14429p(errorSince = "1.6", hiddenSince = "1.7", warningSince = "1.4")
    public static boolean x8(double[] dArr, double d10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        for (double d11 : dArr) {
            if (d11 == d10) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final List<Byte> x9(@NotNull byte[] bArr, int i10) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (i10 >= 0) {
            return Wx(bArr, Vf.u.w(bArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final List<nf.Z<Double, Double>> xA(@NotNull double[] dArr, @NotNull double[] other) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(dArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(nf.v0.a(Double.valueOf(dArr[i10]), Double.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final <T> T xa(T[] tArr, int i10) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return (T) hf(tArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Character>> C xb(@NotNull char[] cArr, @NotNull C destination, @NotNull Mf.l<? super Character, Boolean> predicate) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (char c10 : cArr) {
            if (predicate.invoke(Character.valueOf(c10)).booleanValue()) {
                destination.add(Character.valueOf(c10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Double xc(@NotNull double[] dArr) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (dArr.length == 0) {
            return null;
        }
        return Double.valueOf(dArr[0]);
    }

    public static final <R> R xd(@NotNull byte[] bArr, R r10, @NotNull Mf.p<? super R, ? super Byte, ? extends R> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (byte b10 : bArr) {
            r10 = operation.invoke(r10, Byte.valueOf(b10));
        }
        return r10;
    }

    public static final void xe(@NotNull short[] sArr, @NotNull Mf.p<? super Integer, ? super Short, P0> action) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = sArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Short.valueOf(sArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K> Map<K, List<Short>> xf(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (short s10 : sArr) {
            K invoke = keySelector.invoke(Short.valueOf(s10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Short.valueOf(s10));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Set<Double> xg(@NotNull double[] dArr, @NotNull Iterable<Double> other) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Double> rz = rz(dArr);
        M.U0(rz, other);
        return rz;
    }

    public static String xh(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return oh(bArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @Nullable
    public static final Short xi(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        if (sArr.length == 0) {
            return null;
        }
        return Short.valueOf(sArr[sArr.length - 1]);
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> char xj(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            throw new NoSuchElementException();
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        if (Je2 == 0) {
            return c10;
        }
        R invoke = selector.invoke(Character.valueOf(c10));
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                R invoke2 = selector.invoke(Character.valueOf(c11));
                if (invoke.compareTo(invoke2) < 0) {
                    c10 = c11;
                    invoke = invoke2;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return c10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Double xk(boolean[] zArr, Mf.l<? super Boolean, Double> selector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (zArr.length == 0) {
            return null;
        }
        double doubleValue = selector.invoke(Boolean.valueOf(zArr[0])).doubleValue();
        int Qe2 = Qe(zArr);
        int i10 = 1;
        if (1 <= Qe2) {
            while (true) {
                doubleValue = Math.max(doubleValue, selector.invoke(Boolean.valueOf(zArr[i10])).doubleValue());
                if (i10 == Qe2) {
                    break;
                }
                i10++;
            }
        }
        return Double.valueOf(doubleValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Float xl(@NotNull float[] fArr, @NotNull Comparator<? super Float> comparator) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (fArr.length == 0) {
            return null;
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                if (comparator.compare(Float.valueOf(f10), Float.valueOf(f11)) < 0) {
                    f10 = f11;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(f10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R xm(double[] dArr, Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Double.valueOf(dArr[0]));
        int Ke2 = Ke(dArr);
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                R invoke2 = selector.invoke(Double.valueOf(dArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte xn(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        if (bArr.length == 0) {
            return null;
        }
        byte b10 = bArr[0];
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                byte b11 = bArr[i10];
                if (b10 > b11) {
                    b10 = b11;
                }
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Byte.valueOf(b10);
    }

    public static final <T> boolean xo(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Byte xp(byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return yp(bArr, Tf.f.f24956b);
    }

    public static final byte xq(@NotNull byte[] bArr, @NotNull Mf.p<? super Byte, ? super Byte, Byte> operation) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ie2 = Ie(bArr);
        if (Ie2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        byte b10 = bArr[Ie2];
        for (int i10 = Ie2 - 1; i10 >= 0; i10--) {
            b10 = operation.invoke(Byte.valueOf(bArr[i10]), Byte.valueOf(b10)).byteValue();
        }
        return b10;
    }

    @InterfaceC14422l0(version = "1.4")
    public static void xr(@NotNull short[] sArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, sArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            short s10 = sArr[i10];
            sArr[i10] = sArr[i13];
            sArr[i13] = s10;
            i13--;
            i10++;
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Integer> xs(int[] iArr, Mf.q<? super Integer, ? super Integer, ? super Integer, Integer> operation) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (iArr.length == 0) {
            return H.J();
        }
        int i10 = iArr[0];
        ArrayList arrayList = new ArrayList(iArr.length);
        arrayList.add(Integer.valueOf(i10));
        int length = iArr.length;
        for (int i11 = 1; i11 < length; i11++) {
            i10 = operation.n(Integer.valueOf(i11), Integer.valueOf(i10), Integer.valueOf(iArr[i11])).intValue();
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    public static long xt(@NotNull long[] jArr) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        int length = jArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return jArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static int[] xu(@NotNull int[] iArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new int[0] : C14985q.j1(iArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final <T> T[] xv(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        kotlin.jvm.internal.M.o(tArr2, "copyOf(...)");
        C14985q.h4(tArr2, comparator);
        return tArr2;
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int xw(@NotNull char[] cArr, @NotNull Mf.l<? super Character, Integer> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (char c10 : cArr) {
            i10 += selector.invoke(Character.valueOf(c10)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int xx(double[] dArr, Mf.l<? super Double, nf.B0> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (double d10 : dArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Double.valueOf(d10)).q0());
        }
        return o10;
    }

    @NotNull
    public static final List<Boolean> xy(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, Boolean> predicate) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (boolean z10 : zArr) {
            if (!predicate.invoke(Boolean.valueOf(z10)).booleanValue()) {
                break;
            }
            arrayList.add(Boolean.valueOf(z10));
        }
        return arrayList;
    }

    @NotNull
    public static final Set<Boolean> xz(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        return (Set) Jy(zArr, new LinkedHashSet(n0.j(zArr.length)));
    }

    public static final <T> boolean y5(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        return !(tArr.length == 0);
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M y6(@NotNull byte[] bArr, @NotNull M destination, @NotNull Mf.l<? super Byte, ? extends K> keySelector, @NotNull Mf.l<? super Byte, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        for (byte b10 : bArr) {
            destination.put(keySelector.invoke(Byte.valueOf(b10)), valueTransform.invoke(Byte.valueOf(b10)));
        }
        return destination;
    }

    @Lf.j(name = "averageOfFloat")
    public static final double y7(@NotNull Float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (Float f10 : fArr) {
            d10 += f10.floatValue();
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    @InterfaceC14427o(message = "The function has unclear behavior when searching for NaN or zero values and will be removed soon. Use 'any { it == element }' instead to continue using this behavior, or '.asList().contains(element: T)' to get the same search behavior as in a list.", replaceWith = @InterfaceC14412g0(expression = "any { it == element }", imports = {}))
    @InterfaceC14429p(errorSince = "1.6", hiddenSince = "1.7", warningSince = "1.4")
    public static final boolean y8(float[] fArr, float f10) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        for (float f11 : fArr) {
            if (f11 == f10) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public static final List<Character> y9(@NotNull char[] cArr, int i10) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (i10 >= 0) {
            return Xx(cArr, Vf.u.w(cArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <V> List<V> yA(@NotNull double[] dArr, @NotNull double[] other, @NotNull Mf.p<? super Double, ? super Double, ? extends V> transform) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        kotlin.jvm.internal.M.p(transform, "transform");
        int min = Math.min(dArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            arrayList.add(transform.invoke(Double.valueOf(dArr[i10]), Double.valueOf(other[i10])));
        }
        return arrayList;
    }

    @Ef.f
    public static final Short ya(short[] sArr, int i10) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return m1789if(sArr, i10);
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Double>> C yb(@NotNull double[] dArr, @NotNull C destination, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                destination.add(Double.valueOf(d10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Double yc(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Boolean> predicate) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (double d10 : dArr) {
            if (predicate.invoke(Double.valueOf(d10)).booleanValue()) {
                return Double.valueOf(d10);
            }
        }
        return null;
    }

    public static final <R> R yd(@NotNull char[] cArr, R r10, @NotNull Mf.p<? super R, ? super Character, ? extends R> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (char c10 : cArr) {
            r10 = operation.invoke(r10, Character.valueOf(c10));
        }
        return r10;
    }

    public static final void ye(@NotNull boolean[] zArr, @NotNull Mf.p<? super Integer, ? super Boolean, P0> action) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(action, "action");
        int length = zArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            action.invoke(Integer.valueOf(i11), Boolean.valueOf(zArr[i10]));
            i10++;
            i11++;
        }
    }

    @NotNull
    public static final <K, V> Map<K, List<V>> yf(@NotNull short[] sArr, @NotNull Mf.l<? super Short, ? extends K> keySelector, @NotNull Mf.l<? super Short, ? extends V> valueTransform) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        kotlin.jvm.internal.M.p(valueTransform, "valueTransform");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (short s10 : sArr) {
            K invoke = keySelector.invoke(Short.valueOf(s10));
            List<V> list = linkedHashMap.get(invoke);
            if (list == null) {
                list = new ArrayList<>();
                linkedHashMap.put(invoke, list);
            }
            list.add(valueTransform.invoke(Short.valueOf(s10)));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Set<Float> yg(@NotNull float[] fArr, @NotNull Iterable<Float> other) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Float> sz = sz(fArr);
        M.U0(sz, other);
        return sz;
    }

    public static String yh(char[] cArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return ph(cArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @Nullable
    public static final Short yi(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        int length = sArr.length - 1;
        if (length < 0) {
            return null;
        }
        while (true) {
            int i10 = length - 1;
            short s10 = sArr[length];
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return Short.valueOf(s10);
            }
            if (i10 < 0) {
                return null;
            }
            length = i10;
        }
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> double yj(@NotNull double[] dArr, @NotNull Mf.l<? super Double, ? extends R> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (dArr.length == 0) {
            throw new NoSuchElementException();
        }
        double d10 = dArr[0];
        int Ke2 = Ke(dArr);
        if (Ke2 == 0) {
            return d10;
        }
        R invoke = selector.invoke(Double.valueOf(d10));
        int i10 = 1;
        if (1 <= Ke2) {
            while (true) {
                double d11 = dArr[i10];
                R invoke2 = selector.invoke(Double.valueOf(d11));
                if (invoke.compareTo(invoke2) < 0) {
                    d10 = d11;
                    invoke = invoke2;
                }
                if (i10 == Ke2) {
                    break;
                }
                i10++;
            }
        }
        return d10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float yk(byte[] bArr, Mf.l<? super Byte, Float> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (bArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Byte.valueOf(bArr[0])).floatValue();
        int Ie2 = Ie(bArr);
        int i10 = 1;
        if (1 <= Ie2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Byte.valueOf(bArr[i10])).floatValue());
                if (i10 == Ie2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Integer yl(@NotNull int[] iArr, @NotNull Comparator<? super Integer> comparator) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (iArr.length == 0) {
            return null;
        }
        int i10 = iArr[0];
        int Me2 = Me(iArr);
        int i11 = 1;
        if (1 <= Me2) {
            while (true) {
                int i12 = iArr[i11];
                if (comparator.compare(Integer.valueOf(i10), Integer.valueOf(i12)) < 0) {
                    i10 = i12;
                }
                if (i11 == Me2) {
                    break;
                }
                i11++;
            }
        }
        return Integer.valueOf(i10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R ym(float[] fArr, Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Float.valueOf(fArr[0]));
        int Le2 = Le(fArr);
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                R invoke2 = selector.invoke(Float.valueOf(fArr[i10]));
                if (invoke.compareTo(invoke2) > 0) {
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return invoke;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Character yn(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        if (cArr.length == 0) {
            return null;
        }
        char c10 = cArr[0];
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                char c11 = cArr[i10];
                if (kotlin.jvm.internal.M.t(c10, c11) > 0) {
                    c10 = c11;
                }
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Character.valueOf(c10);
    }

    public static final boolean yo(@NotNull short[] sArr) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        return sArr.length == 0;
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Byte yp(@NotNull byte[] bArr, @NotNull Tf.f random) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(random, "random");
        if (bArr.length == 0) {
            return null;
        }
        return Byte.valueOf(bArr[random.m(bArr.length)]);
    }

    public static final char yq(@NotNull char[] cArr, @NotNull Mf.p<? super Character, ? super Character, Character> operation) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Je2 = Je(cArr);
        if (Je2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        char c10 = cArr[Je2];
        for (int i10 = Je2 - 1; i10 >= 0; i10--) {
            c10 = operation.invoke(Character.valueOf(cArr[i10]), Character.valueOf(c10)).charValue();
        }
        return c10;
    }

    public static final void yr(@NotNull boolean[] zArr) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        int length = (zArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int Qe2 = Qe(zArr);
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            boolean z10 = zArr[i10];
            zArr[i10] = zArr[Qe2];
            zArr[Qe2] = z10;
            Qe2--;
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final List<Long> ys(long[] jArr, Mf.q<? super Integer, ? super Long, ? super Long, Long> operation) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (jArr.length == 0) {
            return H.J();
        }
        long j10 = jArr[0];
        ArrayList arrayList = new ArrayList(jArr.length);
        arrayList.add(Long.valueOf(j10));
        int length = jArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            j10 = operation.n(Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(jArr[i10])).longValue();
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static final long yt(@NotNull long[] jArr, @NotNull Mf.l<? super Long, Boolean> predicate) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        Long l10 = null;
        boolean z10 = false;
        for (long j10 : jArr) {
            if (predicate.invoke(Long.valueOf(j10)).booleanValue()) {
                if (z10) {
                    throw new IllegalArgumentException("Array contains more than one matching element.");
                }
                l10 = Long.valueOf(j10);
                z10 = true;
            }
        }
        if (!z10) {
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
        kotlin.jvm.internal.M.n(l10, "null cannot be cast to non-null type kotlin.Long");
        return l10.longValue();
    }

    @NotNull
    public static int[] yu(@NotNull int[] iArr, @NotNull Collection<Integer> indices) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        int[] iArr2 = new int[indices.size()];
        Iterator<Integer> it = indices.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr2[i10] = iArr[it.next().intValue()];
            i10++;
        }
        return iArr2;
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Byte> yv(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> selector) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return Yv(bArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int yw(@NotNull double[] dArr, @NotNull Mf.l<? super Double, Integer> selector) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (double d10 : dArr) {
            i10 += selector.invoke(Double.valueOf(d10)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int yx(float[] fArr, Mf.l<? super Float, nf.B0> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (float f10 : fArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Float.valueOf(f10)).q0());
        }
        return o10;
    }

    @NotNull
    public static final boolean[] yy(@NotNull Boolean[] boolArr) {
        kotlin.jvm.internal.M.p(boolArr, "<this>");
        int length = boolArr.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = boolArr[i10].booleanValue();
        }
        return zArr;
    }

    @NotNull
    public static final Set<Byte> yz(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length;
        return length != 0 ? length != 1 ? (Set) By(bArr, new LinkedHashSet(n0.j(bArr.length))) : y0.f(Byte.valueOf(bArr[0])) : z0.k();
    }

    public static final <T> boolean z5(@NotNull T[] tArr, @NotNull Mf.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (T t10 : tArr) {
            if (predicate.invoke(t10).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC14394D
    @NotNull
    public static final <K, M extends Map<? super K, ? super Character>> M z6(@NotNull char[] cArr, @NotNull M destination, @NotNull Mf.l<? super Character, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        for (char c10 : cArr) {
            destination.put(keySelector.invoke(Character.valueOf(c10)), Character.valueOf(c10));
        }
        return destination;
    }

    @Lf.j(name = "averageOfInt")
    public static final double z7(@NotNull Integer[] numArr) {
        kotlin.jvm.internal.M.p(numArr, "<this>");
        double d10 = 0.0d;
        int i10 = 0;
        for (Integer num : numArr) {
            d10 += num.intValue();
            i10++;
        }
        if (i10 == 0) {
            return Double.NaN;
        }
        return d10 / i10;
    }

    public static boolean z8(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        return Yf(iArr, i10) >= 0;
    }

    @NotNull
    public static final List<Double> z9(@NotNull double[] dArr, int i10) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        if (i10 >= 0) {
            return Yx(dArr, Vf.u.w(dArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <R> List<nf.Z<Double, R>> zA(@NotNull double[] dArr, @NotNull R[] other) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        int min = Math.min(dArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i10 = 0; i10 < min; i10++) {
            double d10 = dArr[i10];
            arrayList.add(nf.v0.a(Double.valueOf(d10), other[i10]));
        }
        return arrayList;
    }

    @NotNull
    public static final List<Byte> za(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, Boolean> predicate) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        for (byte b10 : bArr) {
            if (predicate.invoke(Byte.valueOf(b10)).booleanValue()) {
                arrayList.add(Byte.valueOf(b10));
            }
        }
        return arrayList;
    }

    @InterfaceC14394D
    @NotNull
    public static final <C extends Collection<? super Float>> C zb(@NotNull float[] fArr, @NotNull C destination, @NotNull Mf.l<? super Float, Boolean> predicate) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (float f10 : fArr) {
            if (predicate.invoke(Float.valueOf(f10)).booleanValue()) {
                destination.add(Float.valueOf(f10));
            }
        }
        return destination;
    }

    @Nullable
    public static final Float zc(@NotNull float[] fArr) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        return Float.valueOf(fArr[0]);
    }

    public static final <R> R zd(@NotNull double[] dArr, R r10, @NotNull Mf.p<? super R, ? super Double, ? extends R> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        for (double d10 : dArr) {
            r10 = operation.invoke(r10, Double.valueOf(d10));
        }
        return r10;
    }

    @NotNull
    public static Vf.l ze(@NotNull byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        return new Vf.l(0, Ie(bArr));
    }

    @NotNull
    public static final <K> Map<K, List<Boolean>> zf(@NotNull boolean[] zArr, @NotNull Mf.l<? super Boolean, ? extends K> keySelector) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        kotlin.jvm.internal.M.p(keySelector, "keySelector");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (boolean z10 : zArr) {
            K invoke = keySelector.invoke(Boolean.valueOf(z10));
            Object obj = linkedHashMap.get(invoke);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(invoke, obj);
            }
            ((List) obj).add(Boolean.valueOf(z10));
        }
        return linkedHashMap;
    }

    @NotNull
    public static final Set<Integer> zg(@NotNull int[] iArr, @NotNull Iterable<Integer> other) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(other, "other");
        Set<Integer> tz = tz(iArr);
        M.U0(tz, other);
        return tz;
    }

    public static String zh(double[] dArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Mf.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return qh(dArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    @NotNull
    public static final <R> List<R> zi(@NotNull byte[] bArr, @NotNull Mf.l<? super Byte, ? extends R> transform) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        kotlin.jvm.internal.M.p(transform, "transform");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b10 : bArr) {
            arrayList.add(transform.invoke(Byte.valueOf(b10)));
        }
        return arrayList;
    }

    @Lf.j(name = "maxByOrThrow")
    @InterfaceC14422l0(version = "1.7")
    public static final <R extends Comparable<? super R>> float zj(@NotNull float[] fArr, @NotNull Mf.l<? super Float, ? extends R> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (fArr.length == 0) {
            throw new NoSuchElementException();
        }
        float f10 = fArr[0];
        int Le2 = Le(fArr);
        if (Le2 == 0) {
            return f10;
        }
        R invoke = selector.invoke(Float.valueOf(f10));
        int i10 = 1;
        if (1 <= Le2) {
            while (true) {
                float f11 = fArr[i10];
                R invoke2 = selector.invoke(Float.valueOf(f11));
                if (invoke.compareTo(invoke2) < 0) {
                    f10 = f11;
                    invoke = invoke2;
                }
                if (i10 == Le2) {
                    break;
                }
                i10++;
            }
        }
        return f10;
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final Float zk(char[] cArr, Mf.l<? super Character, Float> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (cArr.length == 0) {
            return null;
        }
        float floatValue = selector.invoke(Character.valueOf(cArr[0])).floatValue();
        int Je2 = Je(cArr);
        int i10 = 1;
        if (1 <= Je2) {
            while (true) {
                floatValue = Math.max(floatValue, selector.invoke(Character.valueOf(cArr[i10])).floatValue());
                if (i10 == Je2) {
                    break;
                }
                i10++;
            }
        }
        return Float.valueOf(floatValue);
    }

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final Long zl(@NotNull long[] jArr, @NotNull Comparator<? super Long> comparator) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(comparator, "comparator");
        if (jArr.length == 0) {
            return null;
        }
        long j10 = jArr[0];
        int Ne2 = Ne(jArr);
        int i10 = 1;
        if (1 <= Ne2) {
            while (true) {
                long j11 = jArr[i10];
                if (comparator.compare(Long.valueOf(j10), Long.valueOf(j11)) < 0) {
                    j10 = j11;
                }
                if (i10 == Ne2) {
                    break;
                }
                i10++;
            }
        }
        return Long.valueOf(j10);
    }

    @Ef.f
    @nf.Y
    @InterfaceC14422l0(version = "1.4")
    public static final <R extends Comparable<? super R>> R zm(int[] iArr, Mf.l<? super Integer, ? extends R> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        if (iArr.length == 0) {
            throw new NoSuchElementException();
        }
        R invoke = selector.invoke(Integer.valueOf(iArr[0]));
        int Me2 = Me(iArr);
        int i10 = 1;
        if (1 <= Me2) {
            while (true) {
                R invoke2 = selector.invoke(Integer.valueOf(iArr[i10]));
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

    @InterfaceC14422l0(version = "1.4")
    @Nullable
    public static final <T extends Comparable<? super T>> T zn(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        T t10 = tArr[0];
        int Oe2 = Oe(tArr);
        int i10 = 1;
        if (1 <= Oe2) {
            while (true) {
                T t11 = tArr[i10];
                if (t10.compareTo(t11) > 0) {
                    t10 = t11;
                }
                if (i10 == Oe2) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    public static final boolean zo(@NotNull short[] sArr, @NotNull Mf.l<? super Short, Boolean> predicate) {
        kotlin.jvm.internal.M.p(sArr, "<this>");
        kotlin.jvm.internal.M.p(predicate, "predicate");
        for (short s10 : sArr) {
            if (predicate.invoke(Short.valueOf(s10)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final Character zp(char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        return Ap(cArr, Tf.f.f24956b);
    }

    public static final double zq(@NotNull double[] dArr, @NotNull Mf.p<? super Double, ? super Double, Double> operation) {
        kotlin.jvm.internal.M.p(dArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        int Ke2 = Ke(dArr);
        if (Ke2 < 0) {
            throw new UnsupportedOperationException("Empty array can't be reduced.");
        }
        double d10 = dArr[Ke2];
        for (int i10 = Ke2 - 1; i10 >= 0; i10--) {
            d10 = operation.invoke(Double.valueOf(dArr[i10]), Double.valueOf(d10)).doubleValue();
        }
        return d10;
    }

    @InterfaceC14422l0(version = "1.4")
    public static final void zr(@NotNull boolean[] zArr, int i10, int i11) {
        kotlin.jvm.internal.M.p(zArr, "<this>");
        AbstractC14967d.f103841b.d(i10, i11, zArr.length);
        int i12 = (i10 + i11) / 2;
        if (i10 == i12) {
            return;
        }
        int i13 = i11 - 1;
        while (i10 < i12) {
            boolean z10 = zArr[i10];
            zArr[i10] = zArr[i13];
            zArr[i13] = z10;
            i13--;
            i10++;
        }
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <S, T extends S> List<S> zs(@NotNull T[] tArr, @NotNull Mf.q<? super Integer, ? super S, ? super T, ? extends S> operation) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        kotlin.jvm.internal.M.p(operation, "operation");
        if (tArr.length == 0) {
            return H.J();
        }
        S s10 = (Object) tArr[0];
        ArrayList arrayList = new ArrayList(tArr.length);
        arrayList.add(s10);
        int length = tArr.length;
        for (int i10 = 1; i10 < length; i10++) {
            s10 = operation.n(Integer.valueOf(i10), s10, (Object) tArr[i10]);
            arrayList.add(s10);
        }
        return arrayList;
    }

    public static final <T> T zt(@NotNull T[] tArr) {
        kotlin.jvm.internal.M.p(tArr, "<this>");
        int length = tArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return tArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @NotNull
    public static long[] zu(@NotNull long[] jArr, @NotNull Vf.l indices) {
        kotlin.jvm.internal.M.p(jArr, "<this>");
        kotlin.jvm.internal.M.p(indices, "indices");
        return indices.isEmpty() ? new long[0] : C14985q.k1(jArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
    }

    @NotNull
    public static final <R extends Comparable<? super R>> List<Character> zv(@NotNull char[] cArr, @NotNull Mf.l<? super Character, ? extends R> selector) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        return Zv(cArr, new C15420g.a(selector));
    }

    @InterfaceC14427o(message = "Use sumOf instead.", replaceWith = @InterfaceC14412g0(expression = "this.sumOf(selector)", imports = {}))
    @InterfaceC14429p(warningSince = "1.5")
    public static final int zw(@NotNull float[] fArr, @NotNull Mf.l<? super Float, Integer> selector) {
        kotlin.jvm.internal.M.p(fArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int i10 = 0;
        for (float f10 : fArr) {
            i10 += selector.invoke(Float.valueOf(f10)).intValue();
        }
        return i10;
    }

    @Ef.f
    @Lf.j(name = "sumOfUInt")
    @InterfaceC14422l0(version = "1.5")
    public static final int zx(int[] iArr, Mf.l<? super Integer, nf.B0> selector) {
        kotlin.jvm.internal.M.p(iArr, "<this>");
        kotlin.jvm.internal.M.p(selector, "selector");
        int o10 = nf.B0.o(0);
        for (int i10 : iArr) {
            o10 = nf.B0.o(o10 + selector.invoke(Integer.valueOf(i10)).q0());
        }
        return o10;
    }

    @NotNull
    public static final byte[] zy(@NotNull Byte[] bArr) {
        kotlin.jvm.internal.M.p(bArr, "<this>");
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr2[i10] = bArr[i10].byteValue();
        }
        return bArr2;
    }

    @NotNull
    public static final Set<Character> zz(@NotNull char[] cArr) {
        kotlin.jvm.internal.M.p(cArr, "<this>");
        int length = cArr.length;
        return length != 0 ? length != 1 ? (Set) Cy(cArr, new LinkedHashSet(n0.j(Vf.u.D(cArr.length, 128)))) : y0.f(Character.valueOf(cArr[0])) : z0.k();
    }
}
