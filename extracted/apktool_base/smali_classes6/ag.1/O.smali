.class public final synthetic Lag/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag/O;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lag/O;->b:Ljava/lang/CharSequence;

    check-cast p1, LVf/l;

    invoke-static {v0, p1}, Lag/P;->e3(Ljava/lang/CharSequence;LVf/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
