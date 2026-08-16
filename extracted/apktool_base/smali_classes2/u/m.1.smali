.class public final synthetic Lu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/C;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/m;->b:Lcom/android/tools/r8/dex/C;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu/m;->b:Lcom/android/tools/r8/dex/C;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/C;->g(I)Lcom/android/tools/r8/graph/W0$a;

    move-result-object p1

    return-object p1
.end method
