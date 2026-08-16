.class public final synthetic Le1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Le1/u;


# direct methods
.method public synthetic constructor <init>(Le1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/q;->a:Le1/u;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lv1/l;

    iget-object v0, p0, Le1/q;->a:Le1/u;

    check-cast p1, Le1/v;

    invoke-virtual {v0, p1, p2}, Le1/u;->g0(Le1/v;Lv1/l;)V

    return-void
.end method
