package org.eclipse.jdt.internal.core.search.matching;

public class PackageDeclarationLocator extends PatternLocator {
    protected PackageDeclarationPattern pattern;

    public PackageDeclarationLocator(PackageDeclarationPattern packageDeclarationPattern) {
        super(packageDeclarationPattern);
        this.pattern = packageDeclarationPattern;
    }

    @Override
    public int matchContainer() {
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}
