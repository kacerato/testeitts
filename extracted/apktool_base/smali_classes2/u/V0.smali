.class public final synthetic Lu/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/V0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu/V0;->b:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/internal/Oa0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/List;Lcom/android/tools/r8/internal/Oa0;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
