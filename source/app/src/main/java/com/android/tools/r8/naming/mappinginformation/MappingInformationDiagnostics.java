package com.android.tools.r8.naming.mappinginformation;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;

public class MappingInformationDiagnostics implements Diagnostic {

    private final String f56007b;

    private final TextPosition f56008c;

    private MappingInformationDiagnostics(String str, TextPosition textPosition) {
        this.f56007b = str;
        this.f56008c = textPosition;
    }

    public static MappingInformationDiagnostics a(int i10, String str) {
        return new MappingInformationDiagnostics("Could not find a handler for ".concat(str), new TextPosition(1L, i10, -1));
    }

    public static MappingInformationDiagnostics b(int i10) {
        return new MappingInformationDiagnostics("Could not locate 'id' in the JSON object", new TextPosition(1L, i10, -1));
    }

    public static MappingInformationDiagnostics c(int i10) {
        return new MappingInformationDiagnostics("The value of 'id' is not a valid string in the JSON object", new TextPosition(1L, i10, -1));
    }

    public static MappingInformationDiagnostics invalidResidualSignature(String str, int i10) {
        return new MappingInformationDiagnostics("The residual signature mapping '" + str + "' is invalid'", new TextPosition(1L, i10, -1));
    }

    public static MappingInformationDiagnostics invalidResidualSignatureType(String str, int i10) {
        return new MappingInformationDiagnostics("The residual signature mapping '" + str + "' is not of the same type as the member it describes.'", new TextPosition(1L, i10, -1));
    }

    public static MappingInformationDiagnostics notAllowedCombination(e eVar, e eVar2, int i10) {
        return new MappingInformationDiagnostics("The mapping '" + ((Object) eVar) + "' is not allowed in combination with '" + ((Object) eVar2) + "'", new TextPosition(1L, i10, -1));
    }

    @Override
    public String getDiagnosticMessage() {
        return this.f56007b;
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return this.f56008c;
    }

    public static MappingInformationDiagnostics a(int i10, String str, String str2) {
        return new MappingInformationDiagnostics("Could not find '" + str + "' for object with id '" + str2 + "'", new TextPosition(1L, i10, -1));
    }

    public static MappingInformationDiagnostics a(int i10) {
        return new MappingInformationDiagnostics("Could not decode the information for the object with fileName 'sourceFile'", new TextPosition(1L, i10, -1));
    }
}
