.class public final synthetic Lkotlin/jvm/internal/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/z0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/y0;->b:Lkotlin/jvm/internal/z0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/y0;->b:Lkotlin/jvm/internal/z0;

    check-cast p1, LWf/t;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/z0;->b(Lkotlin/jvm/internal/z0;LWf/t;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
