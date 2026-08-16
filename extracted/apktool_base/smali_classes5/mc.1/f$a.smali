.class public Lmc/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUb/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/f;->c(Ljava/io/File;Lmc/f$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmc/f$c;


# direct methods
.method public constructor <init>(Lmc/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lmc/f$a;->a:Lmc/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lmc/f$a;->a:Lmc/f$c;

    invoke-interface {v0}, Lmc/f$c;->b()V

    return-void
.end method
