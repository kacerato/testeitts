package ag;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;
import pf.n0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@t0({"SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1220#2,2:125\n1249#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"})
public final class EnumC3621c {
    private static final Cf.a $ENTRIES;
    private static final EnumC3621c[] $VALUES;

    @NotNull
    public static final a Companion;

    @NotNull
    private static final nf.I<Map<Integer, EnumC3621c>> directionalityMap$delegate;
    private final int value;
    public static final EnumC3621c UNDEFINED = new EnumC3621c("UNDEFINED", 0, -1);
    public static final EnumC3621c LEFT_TO_RIGHT = new EnumC3621c("LEFT_TO_RIGHT", 1, 0);
    public static final EnumC3621c RIGHT_TO_LEFT = new EnumC3621c("RIGHT_TO_LEFT", 2, 1);
    public static final EnumC3621c RIGHT_TO_LEFT_ARABIC = new EnumC3621c("RIGHT_TO_LEFT_ARABIC", 3, 2);
    public static final EnumC3621c EUROPEAN_NUMBER = new EnumC3621c("EUROPEAN_NUMBER", 4, 3);
    public static final EnumC3621c EUROPEAN_NUMBER_SEPARATOR = new EnumC3621c("EUROPEAN_NUMBER_SEPARATOR", 5, 4);
    public static final EnumC3621c EUROPEAN_NUMBER_TERMINATOR = new EnumC3621c("EUROPEAN_NUMBER_TERMINATOR", 6, 5);
    public static final EnumC3621c ARABIC_NUMBER = new EnumC3621c("ARABIC_NUMBER", 7, 6);
    public static final EnumC3621c COMMON_NUMBER_SEPARATOR = new EnumC3621c("COMMON_NUMBER_SEPARATOR", 8, 7);
    public static final EnumC3621c NONSPACING_MARK = new EnumC3621c("NONSPACING_MARK", 9, 8);
    public static final EnumC3621c BOUNDARY_NEUTRAL = new EnumC3621c("BOUNDARY_NEUTRAL", 10, 9);
    public static final EnumC3621c PARAGRAPH_SEPARATOR = new EnumC3621c("PARAGRAPH_SEPARATOR", 11, 10);
    public static final EnumC3621c SEGMENT_SEPARATOR = new EnumC3621c("SEGMENT_SEPARATOR", 12, 11);
    public static final EnumC3621c WHITESPACE = new EnumC3621c("WHITESPACE", 13, 12);
    public static final EnumC3621c OTHER_NEUTRALS = new EnumC3621c("OTHER_NEUTRALS", 14, 13);
    public static final EnumC3621c LEFT_TO_RIGHT_EMBEDDING = new EnumC3621c("LEFT_TO_RIGHT_EMBEDDING", 15, 14);
    public static final EnumC3621c LEFT_TO_RIGHT_OVERRIDE = new EnumC3621c("LEFT_TO_RIGHT_OVERRIDE", 16, 15);
    public static final EnumC3621c RIGHT_TO_LEFT_EMBEDDING = new EnumC3621c("RIGHT_TO_LEFT_EMBEDDING", 17, 16);
    public static final EnumC3621c RIGHT_TO_LEFT_OVERRIDE = new EnumC3621c("RIGHT_TO_LEFT_OVERRIDE", 18, 17);
    public static final EnumC3621c POP_DIRECTIONAL_FORMAT = new EnumC3621c("POP_DIRECTIONAL_FORMAT", 19, 18);

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final Map<Integer, EnumC3621c> a() {
            return (Map) EnumC3621c.directionalityMap$delegate.getValue();
        }

        @NotNull
        public final EnumC3621c b(int i10) {
            EnumC3621c enumC3621c = a().get(Integer.valueOf(i10));
            if (enumC3621c != null) {
                return enumC3621c;
            }
            throw new IllegalArgumentException("Directionality #" + i10 + " is not defined.");
        }

        public a() {
        }
    }

    static {
        EnumC3621c[] b10 = b();
        $VALUES = b10;
        $ENTRIES = Cf.c.c(b10);
        Companion = new a(null);
        directionalityMap$delegate = nf.K.a(new Mf.a() {
            @Override
            public final Object invoke() {
                Map d10;
                d10 = EnumC3621c.d();
                return d10;
            }
        });
    }

    public EnumC3621c(String str, int i10, int i11) {
        this.value = i11;
    }

    public static final EnumC3621c[] b() {
        return new EnumC3621c[]{UNDEFINED, LEFT_TO_RIGHT, RIGHT_TO_LEFT, RIGHT_TO_LEFT_ARABIC, EUROPEAN_NUMBER, EUROPEAN_NUMBER_SEPARATOR, EUROPEAN_NUMBER_TERMINATOR, ARABIC_NUMBER, COMMON_NUMBER_SEPARATOR, NONSPACING_MARK, BOUNDARY_NEUTRAL, PARAGRAPH_SEPARATOR, SEGMENT_SEPARATOR, WHITESPACE, OTHER_NEUTRALS, LEFT_TO_RIGHT_EMBEDDING, LEFT_TO_RIGHT_OVERRIDE, RIGHT_TO_LEFT_EMBEDDING, RIGHT_TO_LEFT_OVERRIDE, POP_DIRECTIONAL_FORMAT};
    }

    public static final Map d() {
        Cf.a<EnumC3621c> e10 = e();
        LinkedHashMap linkedHashMap = new LinkedHashMap(Vf.u.w(n0.j(pf.I.d0(e10, 10)), 16));
        for (Object obj : e10) {
            linkedHashMap.put(Integer.valueOf(((EnumC3621c) obj).value), obj);
        }
        return linkedHashMap;
    }

    @NotNull
    public static Cf.a<EnumC3621c> e() {
        return $ENTRIES;
    }

    public static EnumC3621c valueOf(String str) {
        return (EnumC3621c) Enum.valueOf(EnumC3621c.class, str);
    }

    public static EnumC3621c[] values() {
        return (EnumC3621c[]) $VALUES.clone();
    }

    public final int g() {
        return this.value;
    }
}
