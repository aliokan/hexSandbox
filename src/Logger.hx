class Logger
{
    public static function LOG( value : Dynamic ) : Dynamic
    {
        trace( value );
        return value;
    }
}