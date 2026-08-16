.class public final synthetic Lcom/android/tools/r8/synthesis/V1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/V1;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/V1;->b:Ljava/util/Collection;

    check-cast p1, Lcom/android/tools/r8/synthesis/t;

    invoke-static {v0, p1}, Lcom/android/tools/r8/synthesis/z;->a(Ljava/util/Collection;Lcom/android/tools/r8/synthesis/t;)V

    return-void
.end method
