.class public final synthetic Ltn/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ltn/h;->b:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Ltn/h;->b:J

    check-cast p1, Ltn/u;

    invoke-static {v0, v1, p1}, Ltn/r;->a(JLtn/u;)Z

    move-result p1

    return p1
.end method
