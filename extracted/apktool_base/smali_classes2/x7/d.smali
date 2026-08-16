.class public final synthetic Lx7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lx7/j;


# direct methods
.method public synthetic constructor <init>(Lx7/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/d;->b:Lx7/j;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lx7/d;->b:Lx7/j;

    check-cast p1, Lx7/a;

    invoke-static {v0, p1}, Lx7/f;->b(Lx7/j;Lx7/a;)Z

    move-result p1

    return p1
.end method
