.class public final synthetic Lcom/android/tools/r8/naming/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/G0;

.field public final synthetic c:Lcom/android/tools/r8/internal/U6;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/android/tools/r8/naming/g;

.field public final synthetic f:Lcom/android/tools/r8/naming/k$b;

.field public final synthetic g:Lcom/android/tools/r8/internal/C7;

.field public final synthetic h:Lcom/android/tools/r8/internal/C7;

.field public final synthetic i:Lcom/android/tools/r8/naming/V;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/G0;Lcom/android/tools/r8/internal/U6;Ljava/lang/String;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/s1;->b:Lcom/android/tools/r8/naming/G0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/s1;->c:Lcom/android/tools/r8/internal/U6;

    iput-object p3, p0, Lcom/android/tools/r8/naming/s1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/naming/s1;->e:Lcom/android/tools/r8/naming/g;

    iput-object p5, p0, Lcom/android/tools/r8/naming/s1;->f:Lcom/android/tools/r8/naming/k$b;

    iput-object p6, p0, Lcom/android/tools/r8/naming/s1;->g:Lcom/android/tools/r8/internal/C7;

    iput-object p7, p0, Lcom/android/tools/r8/naming/s1;->h:Lcom/android/tools/r8/internal/C7;

    iput-object p8, p0, Lcom/android/tools/r8/naming/s1;->i:Lcom/android/tools/r8/naming/V;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/naming/s1;->b:Lcom/android/tools/r8/naming/G0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/s1;->c:Lcom/android/tools/r8/internal/U6;

    iget-object v2, p0, Lcom/android/tools/r8/naming/s1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/naming/s1;->e:Lcom/android/tools/r8/naming/g;

    iget-object v4, p0, Lcom/android/tools/r8/naming/s1;->f:Lcom/android/tools/r8/naming/k$b;

    iget-object v5, p0, Lcom/android/tools/r8/naming/s1;->g:Lcom/android/tools/r8/internal/C7;

    iget-object v6, p0, Lcom/android/tools/r8/naming/s1;->h:Lcom/android/tools/r8/internal/C7;

    iget-object v7, p0, Lcom/android/tools/r8/naming/s1;->i:Lcom/android/tools/r8/naming/V;

    move-object v8, p1

    check-cast v8, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual/range {v0 .. v8}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/internal/U6;Ljava/lang/String;Lcom/android/tools/r8/naming/g;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method
