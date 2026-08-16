package org.openjdk.tools.javac.model;

import java.util.AbstractList;
import java.util.Iterator;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.util.Filter;

public class FilteredMemberList extends AbstractList<Symbol> {
    private final Scope scope;

    public FilteredMemberList(Scope scope) {
        this.scope = scope;
    }

    public static boolean lambda$iterator$0(Symbol symbol) {
        return !unwanted(symbol);
    }

    private static boolean unwanted(Symbol symbol) {
        return symbol == null || (symbol.flags() & 4096) != 0;
    }

    @Override
    public Iterator<Symbol> iterator() {
        return this.scope.getSymbols(new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$iterator$0;
                lambda$iterator$0 = FilteredMemberList.lambda$iterator$0((Symbol) obj);
                return lambda$iterator$0;
            }
        }, Scope.LookupKind.NON_RECURSIVE).iterator();
    }

    @Override
    public int size() {
        Iterator<Symbol> it = this.scope.getSymbols(Scope.LookupKind.NON_RECURSIVE).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!unwanted(it.next())) {
                i10++;
            }
        }
        return i10;
    }

    @Override
    public Symbol get(int i10) {
        for (Symbol symbol : this.scope.getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            if (!unwanted(symbol)) {
                int i11 = i10 - 1;
                if (i10 == 0) {
                    return symbol;
                }
                i10 = i11;
            }
        }
        throw new IndexOutOfBoundsException();
    }
}
