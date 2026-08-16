.class public final synthetic Lcom/android/tools/r8/graph/m9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/L4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/L4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/m9;->a:Lcom/android/tools/r8/graph/L4;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/m9;->a:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    return v0
.end method
