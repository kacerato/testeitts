package org.openjdk.tools.javac.code;

import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.apache.commons.math3.geometry.VectorFormat;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.Iterators;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;

public abstract class Scope {
    private static final Filter<Symbol> noFilter = null;
    ScopeListenerList listeners = new ScopeListenerList();
    public final Symbol owner;

    public static class CompoundScope extends Scope implements ScopeListener {
        private int mark;
        List<Scope> subScopes;

        public CompoundScope(Symbol symbol) {
            super(symbol);
            this.subScopes = List.nil();
            this.mark = 0;
        }

        public Iterator lambda$getSymbols$1(final Filter filter, final LookupKind lookupKind) {
            return Iterators.createCompoundIterator(this.subScopes, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Iterator lambda$null$0;
                    lambda$null$0 = Scope.CompoundScope.lambda$null$0(Filter.this, lookupKind, (Scope) obj);
                    return lambda$null$0;
                }
            });
        }

        public Iterator lambda$getSymbolsByName$3(final Name name, final Filter filter, final LookupKind lookupKind) {
            return Iterators.createCompoundIterator(this.subScopes, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Iterator lambda$null$2;
                    lambda$null$2 = Scope.CompoundScope.lambda$null$2(Name.this, filter, lookupKind, (Scope) obj);
                    return lambda$null$2;
                }
            });
        }

        public static Iterator lambda$null$0(Filter filter, LookupKind lookupKind, Scope scope) {
            return scope.getSymbols(filter, lookupKind).iterator();
        }

        public static Iterator lambda$null$2(Name name, Filter filter, LookupKind lookupKind, Scope scope) {
            return scope.getSymbolsByName(name, filter, lookupKind).iterator();
        }

        public int getMark() {
            return this.mark;
        }

        @Override
        public Scope getOrigin(Symbol symbol) {
            Iterator<Scope> it = this.subScopes.iterator();
            while (it.hasNext()) {
                Scope next = it.next();
                if (next.includes(symbol)) {
                    return next.getOrigin(symbol);
                }
            }
            return null;
        }

        @Override
        public Iterable<Symbol> getSymbols(final Filter<Symbol> filter, final LookupKind lookupKind) {
            return new Iterable() {
                @Override
                public final Iterator iterator() {
                    Iterator lambda$getSymbols$1;
                    lambda$getSymbols$1 = Scope.CompoundScope.this.lambda$getSymbols$1(filter, lookupKind);
                    return lambda$getSymbols$1;
                }
            };
        }

        @Override
        public Iterable<Symbol> getSymbolsByName(final Name name, final Filter<Symbol> filter, final LookupKind lookupKind) {
            return new Iterable() {
                @Override
                public final Iterator iterator() {
                    Iterator lambda$getSymbolsByName$3;
                    lambda$getSymbolsByName$3 = Scope.CompoundScope.this.lambda$getSymbolsByName$3(name, filter, lookupKind);
                    return lambda$getSymbolsByName$3;
                }
            };
        }

        @Override
        public boolean isStaticallyImported(Symbol symbol) {
            Iterator<Scope> it = this.subScopes.iterator();
            while (it.hasNext()) {
                Scope next = it.next();
                if (next.includes(symbol)) {
                    return next.isStaticallyImported(symbol);
                }
            }
            return false;
        }

        public void prependSubScope(Scope scope) {
            if (scope != null) {
                this.subScopes = this.subScopes.prepend(scope);
                scope.listeners.add(this);
                this.mark++;
                this.listeners.symbolAdded(null, this);
            }
        }

        @Override
        public void symbolAdded(Symbol symbol, Scope scope) {
            this.mark++;
            this.listeners.symbolAdded(symbol, scope);
        }

        @Override
        public void symbolRemoved(Symbol symbol, Scope scope) {
            this.mark++;
            this.listeners.symbolRemoved(symbol, scope);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CompoundScope{");
            Iterator<Scope> it = this.subScopes.iterator();
            String str = "";
            while (it.hasNext()) {
                Scope next = it.next();
                sb2.append(str);
                sb2.append((Object) next);
                str = DocLint.SEPARATOR;
            }
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }
    }

    public static class Entry {
        public ScopeImpl scope;
        private Entry shadowed;
        public Entry sibling;
        public Symbol sym;

        public Entry(Symbol symbol, Entry entry, Entry entry2, ScopeImpl scopeImpl) {
            this.sym = symbol;
            this.shadowed = entry;
            this.sibling = entry2;
            this.scope = scopeImpl;
        }

        public Entry next() {
            return this.shadowed;
        }

        public Entry next(Filter<Symbol> filter) {
            Symbol symbol = this.shadowed.sym;
            if (symbol != null && filter != null && !filter.accepts(symbol)) {
                return this.shadowed.next(filter);
            }
            return this.shadowed;
        }
    }

    public static class ErrorScope extends ScopeImpl {
        public ErrorScope(ScopeImpl scopeImpl, Symbol symbol, Entry[] entryArr) {
            super(scopeImpl, symbol, entryArr);
        }

        @Override
        public boolean anyMatch(Filter filter) {
            return super.anyMatch(filter);
        }

        @Override
        public WriteableScope dup(Symbol symbol) {
            return new ErrorScope(this, symbol, this.table);
        }

        @Override
        public WriteableScope dupUnshared(Symbol symbol) {
            return new ErrorScope(this, symbol, (Entry[]) this.table.clone());
        }

        @Override
        public void enter(Symbol symbol) {
            super.enter(symbol);
        }

        @Override
        public void enterIfAbsent(Symbol symbol) {
            super.enterIfAbsent(symbol);
        }

        @Override
        public Symbol findFirst(Name name, Filter filter) {
            return super.findFirst(name, filter);
        }

        @Override
        public Scope getOrigin(Symbol symbol) {
            return super.getOrigin(symbol);
        }

        @Override
        public Iterable getSymbols(Filter filter, LookupKind lookupKind) {
            return super.getSymbols(filter, lookupKind);
        }

        @Override
        public Iterable getSymbolsByName(Name name, Filter filter, LookupKind lookupKind) {
            return super.getSymbolsByName(name, filter, lookupKind);
        }

        @Override
        public boolean includes(Symbol symbol) {
            return super.includes(symbol);
        }

        @Override
        public boolean isStaticallyImported(Symbol symbol) {
            return super.isStaticallyImported(symbol);
        }

        @Override
        public WriteableScope leave() {
            return super.leave();
        }

        @Override
        public Entry lookup(Name name) {
            Entry lookup = super.lookup(name);
            return lookup.scope == null ? new Entry(this.owner, null, null, null) : lookup;
        }

        @Override
        public void remove(Symbol symbol) {
            super.remove(symbol);
        }

        @Override
        public String toString() {
            return super.toString();
        }

        public ErrorScope(Symbol symbol) {
            super(symbol);
        }
    }

    public static class FilterImportScope extends Scope {
        private final BiConsumer<JCTree.JCImport, Symbol.CompletionFailure> cfHandler;
        private final ImportFilter filter;
        private final Name filterName;
        private final JCTree.JCImport imp;
        private final Scope origin;
        private final Types types;

        public abstract class SymbolImporter {
            final boolean inspectSuperTypes;
            Set<Symbol> processed = new HashSet();
            List<Iterable<Symbol>> delegates = List.nil();

            public SymbolImporter(boolean z10) {
                this.inspectSuperTypes = z10;
            }

            public abstract Iterable<Symbol> doLookup(Symbol.TypeSymbol typeSymbol);

            public List<Iterable<Symbol>> importFrom(Symbol.TypeSymbol typeSymbol, List<Iterable<Symbol>> list) {
                if (typeSymbol == null || !this.processed.add(typeSymbol)) {
                    return list;
                }
                if (this.inspectSuperTypes) {
                    list = importFrom(FilterImportScope.this.types.supertype(typeSymbol.type).tsym, list);
                    Iterator<Type> it = FilterImportScope.this.types.interfaces(typeSymbol.type).iterator();
                    while (it.hasNext()) {
                        list = importFrom(it.next().tsym, list);
                    }
                }
                return list.prepend(doLookup(typeSymbol));
            }
        }

        public FilterImportScope(Types types, Scope scope, Name name, ImportFilter importFilter, JCTree.JCImport jCImport, BiConsumer<JCTree.JCImport, Symbol.CompletionFailure> biConsumer) {
            super(scope.owner);
            this.types = types;
            this.origin = scope;
            this.filterName = name;
            this.filter = importFilter;
            this.imp = jCImport;
            this.cfHandler = biConsumer;
        }

        public Iterator lambda$getSymbols$1(List list) {
            return Iterators.createFilterIterator(Iterators.createCompoundIterator(list, new C14824j()), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$null$0;
                    lambda$null$0 = Scope.FilterImportScope.this.lambda$null$0((Symbol) obj);
                    return lambda$null$0;
                }
            });
        }

        public Iterator lambda$getSymbolsByName$3(List list) {
            return Iterators.createFilterIterator(Iterators.createCompoundIterator(list, new C14824j()), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$null$2;
                    lambda$null$2 = Scope.FilterImportScope.this.lambda$null$2((Symbol) obj);
                    return lambda$null$2;
                }
            });
        }

        public boolean lambda$null$0(Symbol symbol) {
            return this.filter.accepts(this.origin, symbol);
        }

        public boolean lambda$null$2(Symbol symbol) {
            return this.filter.accepts(this.origin, symbol);
        }

        @Override
        public Scope getOrigin(Symbol symbol) {
            return this.origin;
        }

        @Override
        public Iterable<Symbol> getSymbols(final Filter<Symbol> filter, final LookupKind lookupKind) {
            Name name = this.filterName;
            if (name != null) {
                return getSymbolsByName(name, filter, lookupKind);
            }
            try {
                final List<Iterable<Symbol>> importFrom = new SymbolImporter(this.imp.staticImport) {
                    @Override
                    public Iterable<Symbol> doLookup(Symbol.TypeSymbol typeSymbol) {
                        return typeSymbol.members().getSymbols(filter, lookupKind);
                    }
                }.importFrom((Symbol.TypeSymbol) this.origin.owner, List.nil());
                return new Iterable() {
                    @Override
                    public final Iterator iterator() {
                        Iterator lambda$getSymbols$1;
                        lambda$getSymbols$1 = Scope.FilterImportScope.this.lambda$getSymbols$1(importFrom);
                        return lambda$getSymbols$1;
                    }
                };
            } catch (Symbol.CompletionFailure e10) {
                this.cfHandler.accept(this.imp, e10);
                return Collections.emptyList();
            }
        }

        @Override
        public Iterable<Symbol> getSymbolsByName(final Name name, final Filter<Symbol> filter, final LookupKind lookupKind) {
            Name name2 = this.filterName;
            if (name2 != null && name2 != name) {
                return Collections.emptyList();
            }
            try {
                final List<Iterable<Symbol>> importFrom = new SymbolImporter(this.imp.staticImport) {
                    @Override
                    public Iterable<Symbol> doLookup(Symbol.TypeSymbol typeSymbol) {
                        return typeSymbol.members().getSymbolsByName(name, filter, lookupKind);
                    }
                }.importFrom((Symbol.TypeSymbol) this.origin.owner, List.nil());
                return new Iterable() {
                    @Override
                    public final Iterator iterator() {
                        Iterator lambda$getSymbolsByName$3;
                        lambda$getSymbolsByName$3 = Scope.FilterImportScope.this.lambda$getSymbolsByName$3(importFrom);
                        return lambda$getSymbolsByName$3;
                    }
                };
            } catch (Symbol.CompletionFailure e10) {
                this.cfHandler.accept(this.imp, e10);
                return Collections.emptyList();
            }
        }

        @Override
        public boolean isStaticallyImported(Symbol symbol) {
            return this.imp.staticImport;
        }
    }

    public interface ImportFilter {
        boolean accepts(Scope scope, Symbol symbol);
    }

    public static class ImportScope extends CompoundScope {
        public ImportScope(Symbol symbol) {
            super(symbol);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [A, org.openjdk.tools.javac.code.Scope, org.openjdk.tools.javac.code.Scope$WriteableScope] */
        public void finalizeScope() {
            for (List list = this.subScopes; list.nonEmpty(); list = list.tail) {
                Scope scope = (Scope) list.head;
                if (scope instanceof FilterImportScope) {
                    Symbol symbol = scope.owner;
                    if (symbol.kind == Kinds.Kind.TYP) {
                        ?? create = WriteableScope.create(symbol);
                        Iterator<Symbol> it = scope.getSymbols().iterator();
                        while (it.hasNext()) {
                            create.enter(it.next());
                        }
                        create.listeners.add(new ScopeListener() {
                            @Override
                            public void symbolAdded(Symbol symbol2, Scope scope2) {
                                Assert.error("The scope is sealed.");
                            }

                            @Override
                            public void symbolRemoved(Symbol symbol2, Scope scope2) {
                                Assert.error("The scope is sealed.");
                            }
                        });
                        list.head = create;
                    }
                }
            }
        }
    }

    public enum LookupKind {
        RECURSIVE,
        NON_RECURSIVE
    }

    public static class NamedImportScope extends ImportScope {

        public static class SingleEntryScope extends Scope {
            private final List<Symbol> content;
            private final Scope origin;
            private final Symbol sym;

            public SingleEntryScope(Symbol symbol, Symbol symbol2, Scope scope) {
                super(symbol);
                this.sym = symbol2;
                this.content = List.of(symbol2);
                this.origin = scope;
            }

            @Override
            public Scope getOrigin(Symbol symbol) {
                if (this.sym == symbol) {
                    return this.origin;
                }
                return null;
            }

            @Override
            public Iterable<Symbol> getSymbols(Filter<Symbol> filter, LookupKind lookupKind) {
                return (filter == null || filter.accepts(this.sym)) ? this.content : Collections.emptyList();
            }

            @Override
            public Iterable<Symbol> getSymbolsByName(Name name, Filter<Symbol> filter, LookupKind lookupKind) {
                Symbol symbol = this.sym;
                return (symbol.name == name && (filter == null || filter.accepts(symbol))) ? this.content : Collections.emptyList();
            }

            @Override
            public boolean isStaticallyImported(Symbol symbol) {
                return false;
            }
        }

        public NamedImportScope(Symbol symbol, Scope scope) {
            super(symbol);
            prependSubScope(scope);
        }

        private Scope appendScope(Scope scope) {
            List<Scope> reverse = this.subScopes.reverse();
            List<Scope> of2 = List.of(reverse.head);
            this.subScopes = of2;
            this.subScopes = of2.prepend(scope);
            Iterator<Scope> it = reverse.tail.iterator();
            while (it.hasNext()) {
                this.subScopes = this.subScopes.prepend(it.next());
            }
            return scope;
        }

        public Scope importByName(Types types, Scope scope, Name name, ImportFilter importFilter, JCTree.JCImport jCImport, BiConsumer<JCTree.JCImport, Symbol.CompletionFailure> biConsumer) {
            return appendScope(new FilterImportScope(types, scope, name, importFilter, jCImport, biConsumer));
        }

        public Scope importType(Scope scope, Scope scope2, Symbol symbol) {
            return appendScope(new SingleEntryScope(scope.owner, symbol, scope2));
        }
    }

    public static class ScopeImpl extends WriteableScope {
        private static final int INITIAL_SIZE = 16;
        private static final Entry sentinel = new Entry(null, null, null, null);
        public Entry elems;
        int hashMask;
        int nelems;
        public ScopeImpl next;
        int removeCount;
        private int shared;
        Entry[] table;

        private void dble() {
            int i10 = 0;
            Assert.check(this.shared == 0);
            Entry[] entryArr = this.table;
            int length = entryArr.length * 2;
            Entry[] entryArr2 = new Entry[length];
            ScopeImpl scopeImpl = this;
            while (scopeImpl != null) {
                if (scopeImpl.table == entryArr) {
                    Assert.check(scopeImpl == this || scopeImpl.shared != 0);
                    scopeImpl.table = entryArr2;
                    scopeImpl.hashMask = length - 1;
                }
                scopeImpl = scopeImpl.next;
            }
            int length2 = entryArr.length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    this.nelems = i10;
                    return;
                }
                Entry entry = entryArr[length2];
                if (entry != null && entry != sentinel) {
                    this.table[getIndex(entry.sym.name)] = entry;
                    i10++;
                }
            }
        }

        public Iterator lambda$getSymbols$1(final LookupKind lookupKind, final Filter filter) {
            return new Iterator<Symbol>() {
                private Entry currEntry;
                private ScopeImpl currScope;
                private int seenRemoveCount;

                {
                    this.currScope = ScopeImpl.this;
                    this.currEntry = ScopeImpl.this.elems;
                    this.seenRemoveCount = ScopeImpl.this.removeCount;
                    update();
                }

                private Symbol doNext() {
                    Entry entry = this.currEntry;
                    Symbol symbol = entry == null ? null : entry.sym;
                    if (entry != null) {
                        this.currEntry = entry.sibling;
                    }
                    update();
                    return symbol;
                }

                private void update() {
                    ScopeImpl scopeImpl;
                    skipToNextMatchingEntry();
                    if (lookupKind == LookupKind.RECURSIVE) {
                        while (this.currEntry == null && (scopeImpl = this.currScope.next) != null) {
                            this.currScope = scopeImpl;
                            this.currEntry = scopeImpl.elems;
                            this.seenRemoveCount = scopeImpl.removeCount;
                            skipToNextMatchingEntry();
                        }
                    }
                }

                @Override
                public boolean hasNext() {
                    Entry entry;
                    if (this.seenRemoveCount != this.currScope.removeCount && (entry = this.currEntry) != null && !entry.scope.includes(entry.sym)) {
                        doNext();
                        this.seenRemoveCount = this.currScope.removeCount;
                    }
                    return this.currEntry != null;
                }

                public void skipToNextMatchingEntry() {
                    Filter filter2;
                    while (true) {
                        Entry entry = this.currEntry;
                        if (entry == null || (filter2 = filter) == null || filter2.accepts(entry.sym)) {
                            return;
                        } else {
                            this.currEntry = this.currEntry.sibling;
                        }
                    }
                }

                @Override
                public Symbol next() {
                    if (hasNext()) {
                        return doNext();
                    }
                    throw new NoSuchElementException();
                }
            };
        }

        public Iterator lambda$getSymbolsByName$2(Name name, Filter filter, LookupKind lookupKind) {
            return new Iterator<Symbol>(name, filter, lookupKind) {
                Entry currentEntry;
                int seenRemoveCount;
                final LookupKind val$lookupKind;
                final Name val$name;
                final Filter val$sf;

                {
                    this.val$name = name;
                    this.val$sf = filter;
                    this.val$lookupKind = lookupKind;
                    Entry lookup = ScopeImpl.this.lookup(name, filter);
                    this.currentEntry = lookup;
                    ScopeImpl scopeImpl = lookup.scope;
                    this.seenRemoveCount = scopeImpl != null ? scopeImpl.removeCount : -1;
                }

                private Symbol doNext() {
                    Entry entry = this.currentEntry;
                    this.currentEntry = entry.next(this.val$sf);
                    return entry.sym;
                }

                @Override
                public boolean hasNext() {
                    Entry entry = this.currentEntry;
                    ScopeImpl scopeImpl = entry.scope;
                    if (scopeImpl != null && this.seenRemoveCount != scopeImpl.removeCount && !scopeImpl.includes(entry.sym)) {
                        doNext();
                    }
                    ScopeImpl scopeImpl2 = this.currentEntry.scope;
                    return scopeImpl2 != null && (this.val$lookupKind == LookupKind.RECURSIVE || scopeImpl2 == ScopeImpl.this);
                }

                @Override
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override
                public Symbol next() {
                    if (hasNext()) {
                        return doNext();
                    }
                    throw new NoSuchElementException();
                }
            };
        }

        public static boolean lambda$remove$0(Symbol symbol, Symbol symbol2) {
            return symbol2 == symbol;
        }

        @Override
        public boolean anyMatch(Filter<Symbol> filter) {
            return getSymbols(filter, LookupKind.NON_RECURSIVE).iterator().hasNext();
        }

        @Override
        public WriteableScope dup(Symbol symbol) {
            ScopeImpl scopeImpl = new ScopeImpl(this, symbol, this.table, this.nelems);
            this.shared++;
            return scopeImpl;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
        
            r4 = r4 + 1;
            r2[r3] = r5;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public WriteableScope dupUnshared(Symbol symbol) {
            if (this.shared <= 0) {
                return new ScopeImpl(this, symbol, (Entry[]) this.table.clone(), this.nelems);
            }
            Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
            for (ScopeImpl scopeImpl = this; scopeImpl != null; scopeImpl = scopeImpl.next) {
                newSetFromMap.add(scopeImpl);
            }
            Entry[] entryArr = this.table;
            Entry[] entryArr2 = new Entry[entryArr.length];
            int i10 = 0;
            int i11 = 0;
            while (i10 < entryArr.length) {
                Entry entry = entryArr[i10];
                while (entry != null && entry != sentinel && !newSetFromMap.contains(entry.scope)) {
                    entry = entry.shadowed;
                }
                i10++;
            }
            return new ScopeImpl(this, symbol, entryArr2, i11);
        }

        @Override
        public void enter(Symbol symbol) {
            Assert.check(this.shared == 0);
            if (this.nelems * 3 >= this.hashMask * 2) {
                dble();
            }
            int index = getIndex(symbol.name);
            Entry entry = this.table[index];
            if (entry == null) {
                entry = sentinel;
                this.nelems++;
            }
            Entry entry2 = new Entry(symbol, entry, this.elems, this);
            this.table[index] = entry2;
            this.elems = entry2;
            this.listeners.symbolAdded(symbol, this);
        }

        @Override
        public void enterIfAbsent(Symbol symbol) {
            ScopeImpl scopeImpl;
            Assert.check(this.shared == 0);
            Entry lookup = lookup(symbol.name);
            while (true) {
                scopeImpl = lookup.scope;
                if (scopeImpl != this || lookup.sym.kind == symbol.kind) {
                    break;
                } else {
                    lookup = lookup.next();
                }
            }
            if (scopeImpl != this) {
                enter(symbol);
            }
        }

        @Override
        public Symbol findFirst(Name name, Filter<Symbol> filter) {
            return lookup(name, filter).sym;
        }

        public int getIndex(Name name) {
            int hashCode = name.hashCode();
            int i10 = this.hashMask;
            int i11 = hashCode & i10;
            int i12 = i10 - ((hashCode + (hashCode >> 16)) << 1);
            int i13 = -1;
            while (true) {
                Entry entry = this.table[i11];
                if (entry == null) {
                    return i13 >= 0 ? i13 : i11;
                }
                if (entry == sentinel) {
                    if (i13 < 0) {
                        i13 = i11;
                    }
                } else if (entry.sym.name == name) {
                    return i11;
                }
                i11 = (i11 + i12) & this.hashMask;
            }
        }

        @Override
        public Scope getOrigin(Symbol symbol) {
            for (Entry lookup = lookup(symbol.name); lookup.scope != null; lookup = lookup.next()) {
                if (lookup.sym == symbol) {
                    return this;
                }
            }
            return null;
        }

        @Override
        public Iterable<Symbol> getSymbols(final Filter<Symbol> filter, final LookupKind lookupKind) {
            return new Iterable() {
                @Override
                public final Iterator iterator() {
                    Iterator lambda$getSymbols$1;
                    lambda$getSymbols$1 = Scope.ScopeImpl.this.lambda$getSymbols$1(lookupKind, filter);
                    return lambda$getSymbols$1;
                }
            };
        }

        @Override
        public Iterable<Symbol> getSymbolsByName(final Name name, final Filter<Symbol> filter, final LookupKind lookupKind) {
            return new Iterable() {
                @Override
                public final Iterator iterator() {
                    Iterator lambda$getSymbolsByName$2;
                    lambda$getSymbolsByName$2 = Scope.ScopeImpl.this.lambda$getSymbolsByName$2(name, filter, lookupKind);
                    return lambda$getSymbolsByName$2;
                }
            };
        }

        @Override
        public boolean includes(Symbol symbol) {
            for (Entry lookup = lookup(symbol.name); lookup.scope == this; lookup = lookup.next()) {
                if (lookup.sym == symbol) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean isStaticallyImported(Symbol symbol) {
            return false;
        }

        @Override
        public WriteableScope leave() {
            Assert.check(this.shared == 0);
            Entry[] entryArr = this.table;
            ScopeImpl scopeImpl = this.next;
            if (entryArr != scopeImpl.table) {
                return scopeImpl;
            }
            while (true) {
                Entry entry = this.elems;
                if (entry == null) {
                    break;
                }
                int index = getIndex(entry.sym.name);
                Entry entry2 = this.table[index];
                Entry entry3 = this.elems;
                Assert.check(entry2 == entry3, entry3.sym);
                this.table[index] = this.elems.shadowed;
                this.elems = this.elems.sibling;
            }
            Assert.check(this.next.shared > 0);
            ScopeImpl scopeImpl2 = this.next;
            scopeImpl2.shared--;
            scopeImpl2.nelems = this.nelems;
            return scopeImpl2;
        }

        public Entry lookup(Name name) {
            return lookup(name, Scope.noFilter);
        }

        @Override
        public void remove(final Symbol symbol) {
            Assert.check(this.shared == 0);
            Entry lookup = lookup(symbol.name, new Filter() {
                @Override
                public final boolean accepts(Object obj) {
                    boolean lambda$remove$0;
                    lambda$remove$0 = Scope.ScopeImpl.lambda$remove$0(Symbol.this, (Symbol) obj);
                    return lambda$remove$0;
                }
            });
            if (lookup.scope == null) {
                return;
            }
            int index = getIndex(symbol.name);
            Entry[] entryArr = this.table;
            Entry entry = entryArr[index];
            if (entry == lookup) {
                entryArr[index] = lookup.shadowed;
            } else {
                while (entry.shadowed != lookup) {
                    entry = entry.shadowed;
                }
                entry.shadowed = lookup.shadowed;
            }
            Entry entry2 = this.elems;
            if (entry2 == lookup) {
                this.elems = lookup.sibling;
            } else {
                while (true) {
                    Entry entry3 = entry2.sibling;
                    if (entry3 == lookup) {
                        break;
                    } else {
                        entry2 = entry3;
                    }
                }
                entry2.sibling = lookup.sibling;
            }
            this.removeCount++;
            this.listeners.symbolRemoved(symbol, this);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Scope[");
            for (ScopeImpl scopeImpl = this; scopeImpl != null; scopeImpl = scopeImpl.next) {
                if (scopeImpl != this) {
                    sb2.append(" | ");
                }
                for (Entry entry = scopeImpl.elems; entry != null; entry = entry.sibling) {
                    if (entry != scopeImpl.elems) {
                        sb2.append(", ");
                    }
                    sb2.append((Object) entry.sym);
                }
            }
            sb2.append("]");
            return sb2.toString();
        }

        private ScopeImpl(ScopeImpl scopeImpl, Symbol symbol, Entry[] entryArr) {
            super(symbol);
            this.nelems = 0;
            this.removeCount = 0;
            this.next = scopeImpl;
            Assert.check(symbol != null);
            this.table = entryArr;
            this.hashMask = entryArr.length - 1;
        }

        public Entry lookup(Name name, Filter<Symbol> filter) {
            Entry entry = this.table[getIndex(name)];
            if (entry != null && entry != sentinel) {
                while (entry.scope != null) {
                    Symbol symbol = entry.sym;
                    if (symbol.name == name && (filter == null || filter.accepts(symbol))) {
                        break;
                    }
                    entry = entry.shadowed;
                }
                return entry;
            }
            return sentinel;
        }

        private ScopeImpl(ScopeImpl scopeImpl, Symbol symbol, Entry[] entryArr, int i10) {
            this(scopeImpl, symbol, entryArr);
            this.nelems = i10;
        }

        public ScopeImpl(Symbol symbol) {
            this(null, symbol, new Entry[16]);
        }
    }

    public interface ScopeListener {
        void symbolAdded(Symbol symbol, Scope scope);

        void symbolRemoved(Symbol symbol, Scope scope);
    }

    public static class ScopeListenerList {
        List<WeakReference<ScopeListener>> listeners = List.nil();

        private void walkReferences(Symbol symbol, Scope scope, boolean z10) {
            ListBuffer listBuffer = new ListBuffer();
            Iterator<WeakReference<ScopeListener>> it = this.listeners.iterator();
            while (it.hasNext()) {
                WeakReference<ScopeListener> next = it.next();
                ScopeListener scopeListener = next.get();
                if (scopeListener != null) {
                    if (z10) {
                        scopeListener.symbolRemoved(symbol, scope);
                    } else {
                        scopeListener.symbolAdded(symbol, scope);
                    }
                    listBuffer.add(next);
                }
            }
            this.listeners = listBuffer.toList();
        }

        public void add(ScopeListener scopeListener) {
            this.listeners = this.listeners.prepend(new WeakReference<>(scopeListener));
        }

        public void symbolAdded(Symbol symbol, Scope scope) {
            walkReferences(symbol, scope, false);
        }

        public void symbolRemoved(Symbol symbol, Scope scope) {
            walkReferences(symbol, scope, true);
        }
    }

    public static class StarImportScope extends ImportScope {
        public StarImportScope(Symbol symbol) {
            super(symbol);
        }

        public void importAll(Types types, Scope scope, ImportFilter importFilter, JCTree.JCImport jCImport, BiConsumer<JCTree.JCImport, Symbol.CompletionFailure> biConsumer) {
            Iterator<Scope> it = this.subScopes.iterator();
            while (it.hasNext()) {
                Scope next = it.next();
                Assert.check(next instanceof FilterImportScope);
                FilterImportScope filterImportScope = (FilterImportScope) next;
                if (filterImportScope.origin == scope && filterImportScope.filter == importFilter && filterImportScope.imp.staticImport == jCImport.staticImport) {
                    return;
                }
            }
            prependSubScope(new FilterImportScope(types, scope, null, importFilter, jCImport, biConsumer));
        }

        public boolean isFilled() {
            return this.subScopes.nonEmpty();
        }
    }

    public static abstract class WriteableScope extends Scope {
        public WriteableScope(Symbol symbol) {
            super(symbol);
        }

        public static WriteableScope create(Symbol symbol) {
            return new ScopeImpl(symbol);
        }

        public final WriteableScope dup() {
            return dup(this.owner);
        }

        public abstract WriteableScope dup(Symbol symbol);

        public final WriteableScope dupUnshared() {
            return dupUnshared(this.owner);
        }

        public abstract WriteableScope dupUnshared(Symbol symbol);

        public abstract void enter(Symbol symbol);

        public abstract void enterIfAbsent(Symbol symbol);

        public abstract WriteableScope leave();

        public abstract void remove(Symbol symbol);
    }

    public Scope(Symbol symbol) {
        this.owner = symbol;
    }

    public static boolean lambda$includes$0(Symbol symbol, Symbol symbol2) {
        return symbol2 == symbol;
    }

    public boolean anyMatch(Filter<Symbol> filter) {
        return getSymbols(filter, LookupKind.NON_RECURSIVE).iterator().hasNext();
    }

    public final Symbol findFirst(Name name) {
        return findFirst(name, noFilter);
    }

    public abstract Scope getOrigin(Symbol symbol);

    public final Iterable<Symbol> getSymbols() {
        return getSymbols(noFilter);
    }

    public abstract Iterable<Symbol> getSymbols(Filter<Symbol> filter, LookupKind lookupKind);

    public final Iterable<Symbol> getSymbolsByName(Name name) {
        return getSymbolsByName(name, LookupKind.RECURSIVE);
    }

    public abstract Iterable<Symbol> getSymbolsByName(Name name, Filter<Symbol> filter, LookupKind lookupKind);

    public boolean includes(Symbol symbol) {
        return includes(symbol, LookupKind.RECURSIVE);
    }

    public boolean isEmpty() {
        return !getSymbols(LookupKind.NON_RECURSIVE).iterator().hasNext();
    }

    public abstract boolean isStaticallyImported(Symbol symbol);

    public Symbol findFirst(Name name, Filter<Symbol> filter) {
        Iterator<Symbol> it = getSymbolsByName(name, filter).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public final Iterable<Symbol> getSymbols(Filter<Symbol> filter) {
        return getSymbols(filter, LookupKind.RECURSIVE);
    }

    public final Iterable<Symbol> getSymbolsByName(Name name, Filter<Symbol> filter) {
        return getSymbolsByName(name, filter, LookupKind.RECURSIVE);
    }

    public boolean includes(final Symbol symbol, LookupKind lookupKind) {
        return getSymbolsByName(symbol.name, new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$includes$0;
                lambda$includes$0 = Scope.lambda$includes$0(Symbol.this, (Symbol) obj);
                return lambda$includes$0;
            }
        }, lookupKind).iterator().hasNext();
    }

    public final Iterable<Symbol> getSymbols(LookupKind lookupKind) {
        return getSymbols(noFilter, lookupKind);
    }

    public final Iterable<Symbol> getSymbolsByName(Name name, LookupKind lookupKind) {
        return getSymbolsByName(name, noFilter, lookupKind);
    }
}
