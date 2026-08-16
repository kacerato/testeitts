.class public final synthetic Lcom/android/tools/r8/shaking/me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/d1;

.field public final synthetic b:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/me;->a:Lcom/android/tools/r8/graph/d1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/me;->b:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/me;->a:Lcom/android/tools/r8/graph/d1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/me;->b:Lcom/android/tools/r8/shaking/N;

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    check-cast p2, Lcom/android/tools/r8/shaking/s1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/s1;)Z

    move-result p1

    return p1
.end method
