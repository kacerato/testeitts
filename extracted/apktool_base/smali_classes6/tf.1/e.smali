.class public final synthetic Ltf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:[LMf/l;


# direct methods
.method public synthetic constructor <init>([LMf/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltf/e;->b:[LMf/l;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ltf/e;->b:[LMf/l;

    invoke-static {v0, p1, p2}, Ltf/g;->d([LMf/l;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
