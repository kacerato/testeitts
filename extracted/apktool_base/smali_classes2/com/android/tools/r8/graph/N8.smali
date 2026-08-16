.class public final synthetic Lcom/android/tools/r8/graph/N8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/N8;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/N8;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/N8;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/N8;->b:Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    return v0
.end method
