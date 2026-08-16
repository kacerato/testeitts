.class public final Lm9/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lm9/d;


# direct methods
.method public constructor <init>(I[Lm9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "revision",
            "chunks"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lm9/e$c;->a:I

    .line 4
    iput-object p2, p0, Lm9/e$c;->b:[Lm9/d;

    return-void
.end method

.method public synthetic constructor <init>(I[Lm9/d;Lm9/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm9/e$c;-><init>(I[Lm9/d;)V

    return-void
.end method

.method public static synthetic a(Lm9/e$c;)I
    .locals 0

    iget p0, p0, Lm9/e$c;->a:I

    return p0
.end method

.method public static synthetic b(Lm9/e$c;)[Lm9/d;
    .locals 0

    iget-object p0, p0, Lm9/e$c;->b:[Lm9/d;

    return-object p0
.end method
