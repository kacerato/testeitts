.class public final synthetic Lcom/android/tools/r8/synthesis/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/synthesis/c;

.field public final synthetic c:Lcom/android/tools/r8/synthesis/L;

.field public final synthetic d:Lcom/android/tools/r8/synthesis/l;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/m0;->b:Lcom/android/tools/r8/synthesis/c;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/m0;->c:Lcom/android/tools/r8/synthesis/L;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/m0;->d:Lcom/android/tools/r8/synthesis/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/m0;->b:Lcom/android/tools/r8/synthesis/c;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/m0;->c:Lcom/android/tools/r8/synthesis/L;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/m0;->d:Lcom/android/tools/r8/synthesis/l;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
