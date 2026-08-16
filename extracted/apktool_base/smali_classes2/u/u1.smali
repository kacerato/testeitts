.class public final synthetic Lu/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/u1;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu/u1;->b:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/n0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/n1;)V

    return-void
.end method
