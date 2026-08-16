.class public final synthetic Lcom/android/tools/r8/synthesis/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/synthesis/v;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/J1;->a:Lcom/android/tools/r8/synthesis/v;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J1;->a:Lcom/android/tools/r8/synthesis/v;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/synthesis/w;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/synthesis/v;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V

    return-void
.end method
