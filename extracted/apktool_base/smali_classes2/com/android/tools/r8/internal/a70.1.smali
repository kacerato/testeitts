.class public final enum Lcom/android/tools/r8/internal/a70;
.super Lcom/android/tools/r8/internal/d70;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/d70;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Predicates.alwaysFalse()"

    return-object v0
.end method
