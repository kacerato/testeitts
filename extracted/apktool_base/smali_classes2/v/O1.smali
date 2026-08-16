.class public final synthetic Lv/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/O1;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/O1;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v0}, Lcom/android/tools/r8/ir/optimize/w0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    return-object v0
.end method
