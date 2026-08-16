.class public interface abstract Lcom/jme3/export/SavableClassFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCEPT_ALL:Lcom/jme3/export/SavableClassFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/export/SavableClassFilter$1;

    invoke-direct {v0}, Lcom/jme3/export/SavableClassFilter$1;-><init>()V

    sput-object v0, Lcom/jme3/export/SavableClassFilter;->ACCEPT_ALL:Lcom/jme3/export/SavableClassFilter;

    return-void
.end method


# virtual methods
.method public abstract isAllowed(Ljava/lang/String;)Z
.end method
