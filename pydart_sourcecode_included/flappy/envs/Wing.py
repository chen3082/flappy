# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.8
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.





from sys import version_info
if version_info >= (2, 6, 0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_Wing', [dirname(__file__)])
        except ImportError:
            import _Wing
            return _Wing
        if fp is not None:
            try:
                _mod = imp.load_module('_Wing', fp, pathname, description)
            finally:
                fp.close()
            return _mod
    _Wing = swig_import_helper()
    del swig_import_helper
else:
    import _Wing
del version_info
try:
    _swig_property = property
except NameError:
    pass  # Python < 2.2 doesn't have 'property'.


def _swig_setattr_nondynamic(self, class_type, name, value, static=1):
    if (name == "thisown"):
        return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name, None)
    if method:
        return method(self, value)
    if (not static):
        if _newclass:
            object.__setattr__(self, name, value)
        else:
            self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)


def _swig_setattr(self, class_type, name, value):
    return _swig_setattr_nondynamic(self, class_type, name, value, 0)


def _swig_getattr_nondynamic(self, class_type, name, static=1):
    if (name == "thisown"):
        return self.this.own()
    method = class_type.__swig_getmethods__.get(name, None)
    if method:
        return method(self)
    if (not static):
        return object.__getattr__(self, name)
    else:
        raise AttributeError(name)

def _swig_getattr(self, class_type, name):
    return _swig_getattr_nondynamic(self, class_type, name, 0)


def _swig_repr(self):
    try:
        strthis = "proxy of " + self.this.__repr__()
    except Exception:
        strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

try:
    _object = object
    _newclass = 1
except AttributeError:
    class _object:
        pass
    _newclass = 0


class Wing(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, Wing, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, Wing, name)
    __repr__ = _swig_repr

    def __init__(self, wing_index, wing_length, mean_chord, r33, r22, r11, r00, z_cp2, z_cp1, z_cp0, z_rd, shoulder_width, stroke_plane_offset):
        this = _Wing.new_Wing(wing_index, wing_length, mean_chord, r33, r22, r11, r00, z_cp2, z_cp1, z_cp0, z_rd, shoulder_width, stroke_plane_offset)
        try:
            self.this.append(this)
        except Exception:
            self.this = this
    __swig_destroy__ = _Wing.delete_Wing
    __del__ = lambda self: None

    def doNothing(self):
        return _Wing.Wing_doNothing(self)

    def UpdateAeroForce(self):
        return _Wing.Wing_UpdateAeroForce(self)

    def UpdateStates(self, body_velocity_roll, body_velocity_pitch, body_velocity_yaw, body_velocity_x, body_velocity_y, body_velocity_z, stroke_plane_angle, stroke_plane_velocity, stroke_angle, stroke_velocity, deviation_angle, deviation_velocity, rotate_angle, rotate_velocity):
        return _Wing.Wing_UpdateStates(self, body_velocity_roll, body_velocity_pitch, body_velocity_yaw, body_velocity_x, body_velocity_y, body_velocity_z, stroke_plane_angle, stroke_plane_velocity, stroke_angle, stroke_velocity, deviation_angle, deviation_velocity, rotate_angle, rotate_velocity)

    def UpdateVelocityCoeff(self):
        return _Wing.Wing_UpdateVelocityCoeff(self)

    def UpdateAoA(self):
        return _Wing.Wing_UpdateAoA(self)

    def UpdateCN(self):
        return _Wing.Wing_UpdateCN(self)

    def UpdateVelocitySquaredCoeff(self):
        return _Wing.Wing_UpdateVelocitySquaredCoeff(self)

    def UpdateCenterOfPressure(self):
        return _Wing.Wing_UpdateCenterOfPressure(self)

    def GetSpanCoP(self):
        return _Wing.Wing_GetSpanCoP(self)

    def GetChordCoP(self):
        return _Wing.Wing_GetChordCoP(self)

    def GetNormalForce(self):
        return _Wing.Wing_GetNormalForce(self)

    def GetMoment(self):
        return _Wing.Wing_GetMoment(self)

    def GetM_aero(self):
        return _Wing.Wing_GetM_aero(self)

    def GetM_rd(self):
        return _Wing.Wing_GetM_rd(self)

    def C_N(self, alpha):
        return _Wing.Wing_C_N(self, alpha)

    def d_cp(self, alpha):
        return _Wing.Wing_d_cp(self, alpha)

    def GetStroke(self):
        return _Wing.Wing_GetStroke(self)

    def GetAoA(self):
        return _Wing.Wing_GetAoA(self)
Wing_swigregister = _Wing.Wing_swigregister
Wing_swigregister(Wing)

# This file is compatible with both classic and new-style classes.


