.class public Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/Diagnostic;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/android/tools/r8/position/TextPosition;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->c:Lcom/android/tools/r8/position/TextPosition;

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 5

    .line 5
    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    .line 6
    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    const-string p0, "Could not decode the information for the object with fileName \'sourceFile\'"

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    .line 2
    const-string v1, "Could not find a handler for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for object with id \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    invoke-direct {p2, v1, v2, p0, v3}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static b(I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    const-string p0, "Could not locate \'id\' in the JSON object"

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static c(I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    const-string p0, "The value of \'id\' is not a valid string in the JSON object"

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static invalidResidualSignature(Ljava/lang/String;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The residual signature mapping \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is invalid\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static invalidResidualSignatureType(Ljava/lang/String;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The residual signature mapping \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not of the same type as the member it describes.\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method

.method public static notAllowedCombination(Lcom/android/tools/r8/naming/mappinginformation/e;Lcom/android/tools/r8/naming/mappinginformation/e;I)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mapping \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not allowed in combination with \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/position/TextPosition;

    const-wide/16 v1, 0x1

    const/4 v3, -0x1

    invoke-direct {p1, v1, v2, p2, v3}, Lcom/android/tools/r8/position/TextPosition;-><init>(JII)V

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/TextPosition;)V

    return-object v0
.end method


# virtual methods
.method public getDiagnosticMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/android/tools/r8/position/Position;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->c:Lcom/android/tools/r8/position/TextPosition;

    return-object v0
.end method
