.class public Lcom/github/javaparser/resolution/logic/ConflictingGenericTypesException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formalType",
            "actualType"
        }
    .end annotation

    const-string v0, "No matching between %s (formal) and %s (actual)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
