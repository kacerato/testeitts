package org.openjdk.tools.javac.comp;

import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Infer;
import org.openjdk.tools.javac.comp.InferenceContext;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Warner;

public class InferenceContext {
    Map<JCTree, Type> captureTypeCache;
    Map<Infer.FreeTypeListener, List<Type>> freeTypeListeners;
    Infer infer;
    List<Type> inferencevars;
    Types types;
    List<Type> undetvars;

    public class ReachabilityVisitor extends Types.UnaryVisitor<Void> {
        Set<Type> equiv = new HashSet();
        Set<Type> min = new HashSet();
        Map<Type, Set<Type>> minMap = new HashMap();

        public ReachabilityVisitor() {
        }

        public boolean isEquiv(Type.UndetVar undetVar, Type type, Type.UndetVar.InferenceBound inferenceBound) {
            Type.UndetVar undetVar2 = (Type.UndetVar) InferenceContext.this.asUndetVar(type);
            for (Type.UndetVar.InferenceBound inferenceBound2 : Type.UndetVar.InferenceBound.values()) {
                List<Type> bounds = undetVar.getBounds(inferenceBound2);
                Collection<?> collection = bounds;
                if (inferenceBound2 == inferenceBound) {
                    collection = bounds.diff(List.of(type));
                }
                List<Type> bounds2 = undetVar2.getBounds(inferenceBound2);
                List<Type> list = bounds2;
                if (inferenceBound2 == inferenceBound.complement()) {
                    list = bounds2.diff(List.of(undetVar.qtype));
                }
                if (!collection.containsAll(list) || !list.containsAll(collection)) {
                    return false;
                }
            }
            return true;
        }

        public void scan(List<Type> list) {
            list.stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    InferenceContext.ReachabilityVisitor.this.visit((Type) obj);
                }
            });
        }

        @Override
        public Void visitType(Type type, Void r22) {
            return null;
        }

        @Override
        public Void visitArrayType(Type.ArrayType arrayType, Void r22) {
            return visit(arrayType.elemtype);
        }

        @Override
        public Void visitClassType(Type.ClassType classType, Void r22) {
            visit(classType.getEnclosingType());
            Iterator<Type> it = classType.getTypeArguments().iterator();
            while (it.hasNext()) {
                visit(it.next());
            }
            return null;
        }

        @Override
        public Void visitTypeVar(Type.TypeVar typeVar, Void r32) {
            Type asUndetVar = InferenceContext.this.asUndetVar(typeVar);
            if (asUndetVar.hasTag(TypeTag.UNDETVAR)) {
                visitUndetVar((Type.UndetVar) asUndetVar, (Void) null);
            }
            return null;
        }

        @Override
        public Void visitUndetVar(Type.UndetVar undetVar, Void r10) {
            if (!this.min.add(undetVar.qtype)) {
                return null;
            }
            Set<Type> orDefault = this.minMap.getOrDefault(undetVar.qtype, new HashSet(Collections.singleton(undetVar.qtype)));
            for (Type.UndetVar.InferenceBound inferenceBound : Type.UndetVar.InferenceBound.values()) {
                Iterator<Type> it = undetVar.getBounds(inferenceBound).iterator();
                while (it.hasNext()) {
                    Type next = it.next();
                    Type asUndetVar = InferenceContext.this.asUndetVar(next);
                    if (!asUndetVar.hasTag(TypeTag.UNDETVAR)) {
                        visit(asUndetVar);
                    } else if (isEquiv(undetVar, next, inferenceBound)) {
                        orDefault.add(next);
                        this.equiv.add(next);
                    } else {
                        visit(asUndetVar);
                    }
                }
            }
            this.minMap.put(undetVar.qtype, orDefault);
            return null;
        }

        @Override
        public Void visitWildcardType(Type.WildcardType wildcardType, Void r22) {
            return visit(wildcardType.type);
        }
    }

    public InferenceContext(Infer infer, List<Type> list) {
        this(infer, list, list.map(infer.fromTypeVarFun));
    }

    private List<Type> filterVars(Filter<Type.UndetVar> filter) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = this.undetvars.iterator();
        while (it.hasNext()) {
            Type.UndetVar undetVar = (Type.UndetVar) it.next();
            if (filter.accepts(undetVar)) {
                listBuffer.append(undetVar.qtype);
            }
        }
        return listBuffer.toList();
    }

    public static boolean lambda$boundedVars$2(Type.UndetVar undetVar) {
        return undetVar.getBounds(Type.UndetVar.InferenceBound.UPPER).diff(undetVar.getDeclaredBounds()).appendList(undetVar.getBounds(Type.UndetVar.InferenceBound.EQ, Type.UndetVar.InferenceBound.LOWER)).nonEmpty();
    }

    public void lambda$dupTo$3(InferenceContext inferenceContext) {
        notifyChange();
    }

    public static boolean lambda$instvars$1(Type.UndetVar undetVar) {
        return undetVar.getInst() != null;
    }

    public static boolean lambda$min$4(List list, Type type) {
        return !list.contains(type);
    }

    public void lambda$min$5(Type type, Warner warner, ReachabilityVisitor reachabilityVisitor, InferenceContext inferenceContext) {
        ((Type.UndetVar) asUndetVar(type)).setInst(inferenceContext.asInstType(type));
        this.infer.doIncorporation(inferenceContext, warner);
        solve(List.from(reachabilityVisitor.minMap.get(type)), warner);
        notifyChange();
    }

    public void lambda$min$6(List list, Warner warner, InferenceContext inferenceContext) {
        solve((List<Type>) list, warner);
        notifyChange();
    }

    public static boolean lambda$restvars$0(Type.UndetVar undetVar) {
        return undetVar.getInst() == null;
    }

    private void solve(Infer.GraphStrategy graphStrategy, Warner warner) {
        Infer infer = this.infer;
        infer.getClass();
        new Infer.GraphSolver(this, warner).solve(graphStrategy);
    }

    private List<Type> solveBasic(EnumSet<Infer.InferenceStep> enumSet) {
        return solveBasic(this.inferencevars, enumSet);
    }

    public void addFreeTypeListener(List<Type> list, Infer.FreeTypeListener freeTypeListener) {
        this.freeTypeListeners.put(freeTypeListener, freeVarsIn(list));
    }

    public void addVar(Type.TypeVar typeVar) {
        this.undetvars = this.undetvars.prepend(this.infer.fromTypeVarFun.apply((Type) typeVar));
        this.inferencevars = this.inferencevars.prepend(typeVar);
    }

    public Type asInstType(Type type) {
        return this.types.subst(type, this.inferencevars, instTypes());
    }

    public List<Type> asInstTypes(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(asInstType(it.next()));
        }
        return listBuffer.toList();
    }

    public final Type asUndetVar(Type type) {
        return this.types.subst(type, this.inferencevars, this.undetvars);
    }

    public final List<Type> asUndetVars(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.append(asUndetVar(it.next()));
        }
        return listBuffer.toList();
    }

    public final List<Type> boundedVars() {
        return filterVars(new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$boundedVars$2;
                lambda$boundedVars$2 = InferenceContext.lambda$boundedVars$2((Type.UndetVar) obj);
                return lambda$boundedVars$2;
            }
        });
    }

    public Type cachedCapture(JCTree jCTree, Type type, boolean z10) {
        Type type2 = this.captureTypeCache.get(jCTree);
        if (type2 != null) {
            return type2;
        }
        Type capture = this.types.capture(type);
        if (capture != type && !z10) {
            this.captureTypeCache.put(jCTree, capture);
        }
        return capture;
    }

    public void dupTo(InferenceContext inferenceContext) {
        dupTo(inferenceContext, false);
    }

    public final boolean free(Type type) {
        return type.containsAny(this.inferencevars);
    }

    public final List<Type> freeVarsIn(Type type) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = inferenceVars().iterator();
        while (it.hasNext()) {
            Type next = it.next();
            if (type.contains(next)) {
                listBuffer.add(next);
            }
        }
        return listBuffer.toList();
    }

    public List<Type> inferenceVars() {
        return this.inferencevars;
    }

    public List<Type> instTypes() {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = this.undetvars.iterator();
        while (it.hasNext()) {
            Type.UndetVar undetVar = (Type.UndetVar) it.next();
            listBuffer.append(undetVar.getInst() != null ? undetVar.getInst() : undetVar.qtype);
        }
        return listBuffer.toList();
    }

    public List<Type> instvars() {
        return filterVars(new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$instvars$1;
                lambda$instvars$1 = InferenceContext.lambda$instvars$1((Type.UndetVar) obj);
                return lambda$instvars$1;
            }
        });
    }

    public InferenceContext min(List<Type> list, boolean z10, final Warner warner) {
        if (list.length() == this.inferencevars.length()) {
            return this;
        }
        final ReachabilityVisitor reachabilityVisitor = new ReachabilityVisitor();
        reachabilityVisitor.scan(list);
        if (reachabilityVisitor.min.size() == this.inferencevars.length()) {
            return this;
        }
        List<Type> from = List.from(reachabilityVisitor.min);
        final List<Type> diff = this.inferencevars.diff(from);
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = from.iterator();
        while (it.hasNext()) {
            Type.UndetVar undetVar = (Type.UndetVar) asUndetVar(it.next());
            Assert.check(undetVar.incorporationActions.isEmpty());
            Type.UndetVar dup = undetVar.dup(this.types);
            for (Type.UndetVar.InferenceBound inferenceBound : Type.UndetVar.InferenceBound.values()) {
                dup.setBounds(inferenceBound, (List) undetVar.getBounds(inferenceBound).stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$min$4;
                        lambda$min$4 = InferenceContext.lambda$min$4(List.this, (Type) obj);
                        return lambda$min$4;
                    }
                }).collect(List.collector()));
            }
            listBuffer.add(dup);
        }
        InferenceContext inferenceContext = new InferenceContext(this.infer, from, listBuffer.toList());
        Iterator<Type> it2 = inferenceContext.inferencevars.iterator();
        while (it2.hasNext()) {
            final Type next = it2.next();
            inferenceContext.addFreeTypeListener(List.of(next), new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    InferenceContext.this.lambda$min$5(next, warner, reachabilityVisitor, inferenceContext2);
                }
            });
        }
        if (z10) {
            final List<Type> diff2 = diff.diff(List.from(reachabilityVisitor.equiv));
            inferenceContext.addFreeTypeListener(from, new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    InferenceContext.this.lambda$min$6(diff2, warner, inferenceContext2);
                }
            });
        }
        return inferenceContext;
    }

    public void notifyChange() {
        notifyChange(this.inferencevars.diff(restvars()));
    }

    public List<Type> restvars() {
        return filterVars(new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$restvars$0;
                lambda$restvars$0 = InferenceContext.lambda$restvars$0((Type.UndetVar) obj);
                return lambda$restvars$0;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.openjdk.tools.javac.util.List<org.openjdk.tools.javac.code.Type>] */
    /* JADX WARN: Type inference failed for: r8v1, types: [org.openjdk.tools.javac.util.List] */
    /* JADX WARN: Type inference failed for: r8v4, types: [org.openjdk.tools.javac.util.List<A>] */
    /* JADX WARN: Type inference failed for: r8v5 */
    public void rollback(List<Type> list) {
        Assert.check(list != 0);
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        while (list.nonEmpty() && this.undetvars.nonEmpty()) {
            List<Type> list2 = this.undetvars;
            Type.UndetVar undetVar = (Type.UndetVar) list2.head;
            Type.UndetVar undetVar2 = (Type.UndetVar) list.head;
            if (undetVar.qtype == undetVar2.qtype) {
                undetVar2.dupTo(undetVar, this.types);
                this.undetvars = this.undetvars.tail;
                list = list.tail;
                listBuffer.add(undetVar);
                listBuffer2.add(undetVar.qtype);
            } else {
                this.undetvars = list2.tail;
            }
        }
        this.undetvars = listBuffer.toList();
        this.inferencevars = listBuffer2.toList();
    }

    public List<Type> save() {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = this.undetvars.iterator();
        while (it.hasNext()) {
            listBuffer.add(((Type.UndetVar) it.next()).dup(this.infer.types));
        }
        return listBuffer.toList();
    }

    public void solveAny(List<Type> list, Warner warner) {
        Infer infer = this.infer;
        infer.getClass();
        solve(new Infer.BestLeafSolver(infer, list.intersect(restvars())) {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r3);
                infer.getClass();
            }

            @Override
            public boolean done() {
                return InferenceContext.this.instvars().intersect(this.varsToSolve).nonEmpty();
            }
        }, warner);
    }

    public void solveLegacy(boolean z10, Warner warner, EnumSet<Infer.InferenceStep> enumSet) {
        while (true) {
            List<Type> solveBasic = solveBasic(enumSet);
            if (restvars().isEmpty() || z10) {
                break;
            }
            if (solveBasic.isEmpty()) {
                this.infer.instantiateAsUninferredVars(restvars(), this);
                break;
            } else {
                Iterator<Type> it = this.undetvars.iterator();
                while (it.hasNext()) {
                    ((Type.UndetVar) it.next()).substBounds(solveBasic, asInstTypes(solveBasic), this.types);
                }
            }
        }
        this.infer.doIncorporation(this, warner);
    }

    public String toString() {
        return "Inference vars: " + ((Object) this.inferencevars) + "\nUndet vars: " + ((Object) this.undetvars);
    }

    public List<Type> undetVars() {
        return this.undetvars;
    }

    public Type update(Type type) {
        return type;
    }

    public InferenceContext(Infer infer, List<Type> list, List<Type> list2) {
        this.freeTypeListeners = new LinkedHashMap();
        this.captureTypeCache = new HashMap();
        this.inferencevars = list;
        this.undetvars = list2;
        this.infer = infer;
        this.types = infer.types;
    }

    public void dupTo(InferenceContext inferenceContext, boolean z10) {
        List<Type> list = inferenceContext.inferencevars;
        inferenceContext.inferencevars = list.appendList(this.inferencevars.diff(list));
        List<Type> save = z10 ? save() : this.undetvars;
        List<Type> list2 = inferenceContext.undetvars;
        inferenceContext.undetvars = list2.appendList(save.diff(list2));
        Iterator<Type> it = this.inferencevars.iterator();
        while (it.hasNext()) {
            inferenceContext.freeTypeListeners.put(new Infer.FreeTypeListener() {
                @Override
                public final void typesInferred(InferenceContext inferenceContext2) {
                    InferenceContext.this.lambda$dupTo$3(inferenceContext2);
                }
            }, List.of(it.next()));
        }
    }

    public final boolean free(List<Type> list) {
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            if (free(it.next())) {
                return true;
            }
        }
        return false;
    }

    public void notifyChange(List<Type> list) {
        Infer.InferenceException inferenceException = null;
        for (Map.Entry entry : new LinkedHashMap(this.freeTypeListeners).entrySet()) {
            if (!Type.containsAny((List) entry.getValue(), this.inferencevars.diff(list))) {
                try {
                    ((Infer.FreeTypeListener) entry.getKey()).typesInferred(this);
                    this.freeTypeListeners.remove(entry.getKey());
                } catch (Infer.InferenceException e10) {
                    if (inferenceException == null) {
                        inferenceException = e10;
                    }
                }
            }
        }
        if (inferenceException != null) {
            throw inferenceException;
        }
    }

    public List<Type> solveBasic(List<Type> list, EnumSet<Infer.InferenceStep> enumSet) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.intersect(restvars()).iterator();
        while (it.hasNext()) {
            Type.UndetVar undetVar = (Type.UndetVar) asUndetVar(it.next());
            Iterator<E> it2 = enumSet.iterator();
            while (true) {
                if (it2.hasNext()) {
                    Infer.InferenceStep inferenceStep = (Infer.InferenceStep) it2.next();
                    if (inferenceStep.accepts(undetVar, this)) {
                        undetVar.setInst(inferenceStep.solve(undetVar, this));
                        listBuffer.add(undetVar.qtype);
                        break;
                    }
                }
            }
        }
        return listBuffer.toList();
    }

    public void solve(Warner warner) {
        Infer infer = this.infer;
        infer.getClass();
        solve(new Infer.LeafSolver(infer) {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
                infer.getClass();
            }

            @Override
            public boolean done() {
                return InferenceContext.this.restvars().isEmpty();
            }
        }, warner);
    }

    public void solve(List<Type> list, Warner warner) {
        Infer infer = this.infer;
        infer.getClass();
        solve(new Infer.BestLeafSolver(infer, list, list) {
            final List val$vars;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(list);
                this.val$vars = list;
                infer.getClass();
            }

            @Override
            public boolean done() {
                InferenceContext inferenceContext = InferenceContext.this;
                return !inferenceContext.free(inferenceContext.asInstTypes(this.val$vars));
            }
        }, warner);
    }

    public final List<Type> freeVarsIn(List<Type> list) {
        ListBuffer listBuffer = new ListBuffer();
        Iterator<Type> it = list.iterator();
        while (it.hasNext()) {
            listBuffer.appendList(freeVarsIn(it.next()));
        }
        ListBuffer listBuffer2 = new ListBuffer();
        Iterator it2 = listBuffer.iterator();
        while (it2.hasNext()) {
            Type type = (Type) it2.next();
            if (!listBuffer2.contains(type)) {
                listBuffer2.add(type);
            }
        }
        return listBuffer2.toList();
    }
}
