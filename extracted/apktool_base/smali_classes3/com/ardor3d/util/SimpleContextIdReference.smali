.class public Lcom/ardor3d/util/SimpleContextIdReference;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final REFS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/util/SimpleContextIdReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _glContext:Ljava/lang/Object;

.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/ardor3d/util/SimpleContextIdReference;->REFS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    sget-object p1, Lcom/ardor3d/util/SimpleContextIdReference;->REFS:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p0, Lcom/ardor3d/util/SimpleContextIdReference;->_id:I

    iput-object p4, p0, Lcom/ardor3d/util/SimpleContextIdReference;->_glContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/Reference;->clear()V

    sget-object v0, Lcom/ardor3d/util/SimpleContextIdReference;->REFS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getGlContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/SimpleContextIdReference;->_glContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/util/SimpleContextIdReference;->_id:I

    return v0
.end method
