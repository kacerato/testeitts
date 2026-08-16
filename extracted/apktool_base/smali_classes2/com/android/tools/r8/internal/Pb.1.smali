.class public abstract Lcom/android/tools/r8/internal/Pb;
.super Lcom/android/tools/r8/internal/Wb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Wb;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Wb;->b(C)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/android/tools/r8/internal/Wb;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Tb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Tb;-><init>(Lcom/android/tools/r8/internal/Pb;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pb;->b()Lcom/android/tools/r8/internal/Wb;

    move-result-object v0

    return-object v0
.end method
