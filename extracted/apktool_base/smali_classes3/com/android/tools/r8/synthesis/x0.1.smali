.class public final synthetic Lcom/android/tools/r8/synthesis/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/synthesis/S$b;

.field public final synthetic c:Lcom/android/tools/r8/internal/Gf;

.field public final synthetic d:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/x0;->b:Lcom/android/tools/r8/synthesis/S$b;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/x0;->c:Lcom/android/tools/r8/internal/Gf;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/x0;->d:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/x0;->b:Lcom/android/tools/r8/synthesis/S$b;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/x0;->c:Lcom/android/tools/r8/internal/Gf;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/x0;->d:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/synthesis/l;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/l;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
