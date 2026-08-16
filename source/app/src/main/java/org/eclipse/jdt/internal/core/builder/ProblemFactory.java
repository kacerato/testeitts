package org.eclipse.jdt.internal.core.builder;

import java.util.Locale;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class ProblemFactory extends DefaultProblemFactory {
    static SimpleLookupTable factories = new SimpleLookupTable(5);

    private ProblemFactory(Locale locale) {
        super(locale);
    }

    public static ProblemFactory getProblemFactory(Locale locale) {
        ProblemFactory problemFactory = (ProblemFactory) factories.get(locale);
        if (problemFactory != null) {
            return problemFactory;
        }
        SimpleLookupTable simpleLookupTable = factories;
        ProblemFactory problemFactory2 = new ProblemFactory(locale);
        simpleLookupTable.put(locale, problemFactory2);
        return problemFactory2;
    }
}
