.class public final synthetic Lag/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/p;


# instance fields
.field public final synthetic b:[C

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>([CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag/M;->b:[C

    iput-boolean p2, p0, Lag/M;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lag/M;->b:[C

    iget-boolean v1, p0, Lag/M;->c:Z

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lag/P;->d3([CZLjava/lang/CharSequence;I)Lnf/Z;

    move-result-object p1

    return-object p1
.end method
