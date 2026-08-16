.class public LO6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO6/a$F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/a;->e2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/a;


# direct methods
.method public constructor <init>(LO6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LO6/a$d;->a:LO6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    iget-object v0, p0, LO6/a$d;->a:LO6/a;

    invoke-static {v0}, LO6/a;->H1(LO6/a;)I

    move-result v0

    return v0
.end method
