package org.openjdk.tools.javac.code;

import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Options;
import org.openjdk.tools.javac.util.Pair;

public class Lint {
    protected static final Context.Key<Lint> lintKey = new Context.Key<>();
    private static final Map<String, LintCategory> map = new ConcurrentHashMap(20);
    private final AugmentVisitor augmentor;
    private final EnumSet<LintCategory> suppressedValues;
    private final EnumSet<LintCategory> values;

    public enum LintCategory {
        AUXILIARYCLASS("auxiliaryclass"),
        CAST("cast"),
        CLASSFILE("classfile"),
        DEPRECATION("deprecation"),
        DEP_ANN("dep-ann"),
        DIVZERO("divzero"),
        EMPTY("empty"),
        EXPORTS("exports"),
        FALLTHROUGH("fallthrough"),
        FINALLY("finally"),
        MODULE(IClasspathAttribute.MODULE),
        OPENS("opens"),
        OPTIONS("options"),
        OVERLOADS("overloads"),
        OVERRIDES("overrides"),
        PATH("path"),
        PROCESSING("processing"),
        RAW("rawtypes"),
        REMOVAL("removal"),
        REQUIRES_AUTOMATIC("requires-automatic"),
        REQUIRES_TRANSITIVE_AUTOMATIC("requires-transitive-automatic"),
        SERIAL("serial"),
        STATIC("static"),
        TRY("try"),
        UNCHECKED("unchecked"),
        VARARGS("varargs");

        public final boolean hidden;
        public final String option;

        LintCategory(String str) {
            this(str, false);
        }

        public static LintCategory get(String str) {
            return (LintCategory) Lint.map.get(str);
        }

        LintCategory(String str, boolean z10) {
            this.option = str;
            this.hidden = z10;
            Lint.map.put(str, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Lint(Context context) {
        Options instance = Options.instance(context);
        if (!instance.isSet(Option.XLINT)) {
            Option option = Option.XLINT_CUSTOM;
            if (!instance.isSet(option, Tj.d.f25405q)) {
                if (instance.isSet(option, "none")) {
                    this.values = EnumSet.noneOf(LintCategory.class);
                } else {
                    EnumSet<LintCategory> noneOf = EnumSet.noneOf(LintCategory.class);
                    this.values = noneOf;
                    if (Source.instance(context).compareTo(Source.JDK1_9) >= 0) {
                        noneOf.add(LintCategory.DEP_ANN);
                    }
                    noneOf.add(LintCategory.REQUIRES_TRANSITIVE_AUTOMATIC);
                    noneOf.add(LintCategory.OPENS);
                    noneOf.add(LintCategory.MODULE);
                    noneOf.add(LintCategory.REMOVAL);
                }
                for (LintCategory lintCategory : LintCategory.values()) {
                    Option option2 = Option.XLINT_CUSTOM;
                    if (instance.isSet(option2, lintCategory.option)) {
                        this.values.add(lintCategory);
                    } else {
                        if (instance.isSet(option2, "-" + lintCategory.option)) {
                            this.values.remove(lintCategory);
                        }
                    }
                }
                this.suppressedValues = EnumSet.noneOf(LintCategory.class);
                context.put((Context.Key<Context.Key<Lint>>) lintKey, (Context.Key<Lint>) this);
                this.augmentor = new AugmentVisitor(context);
            }
        }
        this.values = EnumSet.allOf(LintCategory.class);
        while (r4 < r3) {
        }
        this.suppressedValues = EnumSet.noneOf(LintCategory.class);
        context.put((Context.Key<Context.Key<Lint>>) lintKey, (Context.Key<Lint>) this);
        this.augmentor = new AugmentVisitor(context);
    }

    public static Lint instance(Context context) {
        Lint lint = (Lint) context.get(lintKey);
        return lint == null ? new Lint(context) : lint;
    }

    public Lint augment(Attribute.Compound compound) {
        return this.augmentor.augment(this, compound);
    }

    public boolean isEnabled(LintCategory lintCategory) {
        return this.values.contains(lintCategory);
    }

    public boolean isSuppressed(LintCategory lintCategory) {
        return this.suppressedValues.contains(lintCategory);
    }

    public Lint suppress(LintCategory... lintCategoryArr) {
        Lint lint = new Lint(this);
        lint.values.removeAll(Arrays.asList(lintCategoryArr));
        lint.suppressedValues.addAll(Arrays.asList(lintCategoryArr));
        return lint;
    }

    public String toString() {
        return "Lint:[values" + ((Object) this.values) + " suppressedValues" + ((Object) this.suppressedValues) + "]";
    }

    public Lint augment(Symbol symbol) {
        Lint augment = this.augmentor.augment(this, symbol.getDeclarationAttributes());
        if (symbol.isDeprecated()) {
            if (augment == this) {
                augment = new Lint(this);
            }
            EnumSet<LintCategory> enumSet = augment.values;
            LintCategory lintCategory = LintCategory.DEPRECATION;
            enumSet.remove(lintCategory);
            augment.suppressedValues.add(lintCategory);
        }
        return augment;
    }

    public static class AugmentVisitor implements Attribute.Visitor {
        private final Context context;
        private Lint lint;
        private Lint parent;
        private Symtab syms;

        public AugmentVisitor(Context context) {
            this.context = context;
        }

        private void initSyms() {
            if (this.syms == null) {
                this.syms = Symtab.instance(this.context);
            }
        }

        private void suppress(LintCategory lintCategory) {
            if (this.lint == null) {
                this.lint = new Lint(this.parent);
            }
            this.lint.suppressedValues.add(lintCategory);
            this.lint.values.remove(lintCategory);
        }

        public Lint augment(Lint lint, Attribute.Compound compound) {
            initSyms();
            this.parent = lint;
            this.lint = null;
            compound.accept(this);
            Lint lint2 = this.lint;
            return lint2 == null ? lint : lint2;
        }

        @Override
        public void visitArray(Attribute.Array array) {
            for (Attribute attribute : array.values) {
                attribute.accept(this);
            }
        }

        @Override
        public void visitClass(Attribute.Class r12) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitCompound(Attribute.Compound compound) {
            if (compound.type.tsym == this.syms.suppressWarningsType.tsym) {
                for (List list = compound.values; list.nonEmpty(); list = list.tail) {
                    Pair pair = (Pair) list.head;
                    if (((Symbol.MethodSymbol) pair.fst).name.toString().equals("value")) {
                        ((Attribute) pair.snd).accept(this);
                    }
                }
            }
        }

        @Override
        public void visitConstant(Attribute.Constant constant) {
            LintCategory lintCategory;
            if (constant.type.tsym != this.syms.stringType.tsym || (lintCategory = LintCategory.get((String) constant.value)) == null) {
                return;
            }
            suppress(lintCategory);
        }

        @Override
        public void visitEnum(Attribute.Enum r12) {
        }

        @Override
        public void visitError(Attribute.Error error) {
        }

        public Lint augment(Lint lint, List<Attribute.Compound> list) {
            initSyms();
            this.parent = lint;
            this.lint = null;
            Iterator<Attribute.Compound> it = list.iterator();
            while (it.hasNext()) {
                it.next().accept(this);
            }
            Lint lint2 = this.lint;
            return lint2 == null ? lint : lint2;
        }
    }

    public Lint(Lint lint) {
        this.augmentor = lint.augmentor;
        this.values = lint.values.m1756clone();
        this.suppressedValues = lint.suppressedValues.m1756clone();
    }
}
