.class public final synthetic Lcom/android/tools/r8/shaking/qe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/J2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/J2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/qe;->b:Lcom/android/tools/r8/graph/J2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/qe;->b:Lcom/android/tools/r8/graph/J2;

    invoke-static {v0}, Lcom/android/tools/r8/shaking/s2;->b(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    return-object v0
.end method
