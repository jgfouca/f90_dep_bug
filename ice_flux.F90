module ice_flux

  implicit none
  save

  real, dimension (1,2,3) :: &
       daidtd  , &
       dvidtd

  ! The presence of this segment breaks the detection of the ice_state dependency
  real, dimension(1,2,3) :: &
#ifdef FOO
       baz, &
#endif
#ifdef BAR
       bla, &
#endif
       goo
  ! end broken segment

contains

  subroutine init_history_dyn
    use ice_state, only: aice, vice

    daidtd  (:,:,:) = aice(:,:,:)
    dvidtd  (:,:,:) = vice(:,:,:)

  end subroutine init_history_dyn

end module ice_flux
