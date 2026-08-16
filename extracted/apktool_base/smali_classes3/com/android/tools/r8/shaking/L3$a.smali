.class public abstract Lcom/android/tools/r8/shaking/L3$a;
.super Lcom/android/tools/r8/shaking/f3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/L3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/android/tools/r8/shaking/L3;",
        "B:",
        "Lcom/android/tools/r8/shaking/L3$a<",
        "TC;TB;>;>",
        "Lcom/android/tools/r8/shaking/f3$a<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field public p:Lcom/android/tools/r8/shaking/O3;

.field public final q:Lcom/android/tools/r8/shaking/M3$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/f3$a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/shaking/M3;->a()Lcom/android/tools/r8/shaking/M3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/shaking/O3;)Lcom/android/tools/r8/shaking/L3$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/shaking/O3;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/shaking/L3$a;->p:Lcom/android/tools/r8/shaking/O3;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/L3$a;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/L3$a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L3$a;->q:Lcom/android/tools/r8/shaking/M3$a;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/f3$a;->c()Lcom/android/tools/r8/shaking/f3$a;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/L3$a;

    return-object p1
.end method
