.class public interface abstract Lcom/android/tools/r8/position/Position;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNKNOWN:Lcom/android/tools/r8/position/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/w60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/w60;-><init>()V

    sput-object v0, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    return-void
.end method


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method
