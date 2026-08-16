.class public final Lcom/android/tools/r8/internal/XS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/XS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/XS;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XS;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/XS;->a:Lcom/android/tools/r8/internal/XS;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/YS;

    check-cast p2, Lcom/android/tools/r8/internal/YS;

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/YS;->R()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    invoke-interface {p2}, Lcom/android/tools/r8/internal/YS;->R()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/c;->b(I)I

    move-result v1

    .line 3
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/internal/YS;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/YS;

    .line 6
    invoke-interface {p1}, Lcom/android/tools/r8/internal/YS;->R()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 8
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 9
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/YS;->b(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method
