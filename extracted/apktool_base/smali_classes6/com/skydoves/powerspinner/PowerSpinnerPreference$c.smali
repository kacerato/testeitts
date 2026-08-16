.class public final Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerPreference;->e(LMf/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/r<",
        "Ljava/lang/Integer;",
        "TT;",
        "Ljava/lang/Integer;",
        "TT;",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

.field public final synthetic c:LMf/r;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;LMf/r;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    iput-object p2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;->c:LMf/r;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;->c:LMf/r;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, LMf/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;->b:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    invoke-static {p1, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->a(Lcom/skydoves/powerspinner/PowerSpinnerPreference;I)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$c;->b(ILjava/lang/Object;ILjava/lang/Object;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
