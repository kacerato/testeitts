.class public final synthetic LH7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH7/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LH7/c;->b:Ljava/util/List;

    check-cast p1, LH7/a;

    invoke-static {v0, p1}, LH7/d;->g(Ljava/util/List;LH7/a;)Z

    move-result p1

    return p1
.end method
