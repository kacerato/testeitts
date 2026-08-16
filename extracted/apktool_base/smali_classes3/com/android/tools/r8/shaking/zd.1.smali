.class public final synthetic Lcom/android/tools/r8/shaking/zd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/m2;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/J;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/synthesis/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/zd;->b:Lcom/android/tools/r8/shaking/m2;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/zd;->c:Lcom/android/tools/r8/synthesis/J;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/zd;->b:Lcom/android/tools/r8/shaking/m2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/zd;->c:Lcom/android/tools/r8/synthesis/J;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/m2;->a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
